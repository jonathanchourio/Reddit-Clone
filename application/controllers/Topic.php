<?php
	class Topic extends MY_Controller {

		public function __construct()
		{
			parent::__construct();
			$this->load->model('link_model');
		}

		public function index()
		{
            $this->load->library('pagination');

            $config['base_url'] = base_url('t/'.$this->uri->segment(2));
			$this->data['base_url'] = base_url('t/'.$this->uri->segment(2).'/');

            $config['total_rows'] = count($this->link_model->get_link_count());
            $config['per_page'] = 10;
            $config['full_tag_open'] = '<p>'; //class = "btn"
            $config['prev_link'] = 'Previous page';
            $config['next_link'] = 'Next page';
            $config['full_tag_close'] = '</p>';
            $config['display_pages'] = FALSE; //The "number" link is not displayed
            $config['first_link'] = FALSE; //The start link is not displayed
            $config['last_link'] = FALSE;
			$config['next_tag_open'] = '<span style="float:right;">';
			$config['next_tag_close'] = "</span>";
            $this->pagination->initialize($config);
			$this->data['per_page'] = $config['per_page'];

			$segment = $this->uri->segment(3);
			if ( ($segment == 'hot') || ($segment == '') ) {
				$ranking = 'hot';
			} else if ($segment == 'new') {
				$ranking = 'new';
			} else if ($segment == 'rising') {
				$ranking = 'rising';
			} else if ($segment == 'controversial') {
				$ranking = 'controversial';
			} else if ($segment == 'top') {
				$ranking = 'top';
			} else {
				show_404();
			}

            $this->data['title'] = $this->uri->segment(2);
            $this->data['link'] = $this->link_model->retrieve_link($id = FALSE,$config['per_page'],$this->uri->segment(3),$ranking,$this->uri->segment(2));
			$this->data['sn'] = 3;

			if(!empty($this->session->userdata['username']) && $this->session->userdata['username']){
				$this->data['toggle_sidebar'] = '<div id="toggle-sidebar">
					<a style="display: none;" class="close-sidebar" href="javascript:void(0)" title="折叠">X</a>
					<a class="show-sidebar" href="javascript:void(0)" title="展开" ><</a>
				</div>';
				$this->data['sidebar'] = '<div id="sidebar" class="span1"><!-- background-color:#cbb;-->
				  <ul style="list-style-type:none">
				    <li><a href="#">Subscribe</a></li>
					<li><a href="#">News</a></li>
					<li><a href="#">Images</a></li>
					<li><a href="#">Test</a></li>
					<li><a href="#">Create</a></li>
					<li><a href="#">Find</a></li>
					<li><a href="#">My Favorites</a></li>
				  </ul>
				</div>';
			} else {
				$this->data['toggle_sidebar'] = '';
				$this->data['sidebar'] = '';
			}

			$this->load->view('templates/header',$this->data);
			$this->load->view('link/index',$this->data);
			$this->load->view('templates/side');
			$this->load->view('templates/footer');
		}

		public function check_ranking($segment) {
			if ($segment == 'new') {
				return 'new';
			} else if ($segment == 'rising') {
				return 'rising';
			} else if ($segment == 'controversial') {
				return 'controversial';
			} else if ($segment == 'top') {
				return 'top';
			} else {
				return 'hot';
			}
		}

	}
?>

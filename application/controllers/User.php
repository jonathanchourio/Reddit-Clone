<?php

    class User extends MY_Controller
    {
        public function __construct()
        {
            parent::__construct();
            $this->load->model('user_model');
            $this->load->model('link_model');
        }

        public function index()
        {
            $this->load->library('pagination');
            if (!$this->user_model->check_username_by_param(urldecode($this->uri->segment(2)))) {
                redirect('');
            }

            if (($this->uri->segment(3) == '') || is_numeric($this->uri->segment(3))) {
                $this->data['offset'] = $this->uri->segment(3);
                $this->data['activity_tab'] = null;
                $config['base_url'] = base_url('kullanici/').$this->uri->segment(2).'/';
            } else {
                //if ( (!$this->data['is_user_logged_in']) && ($this->uri->segment(3) != 'gonderileri') && ($this->uri->segment(3) != 'yorumlari') ) redirect( base_url('kullanici/').$this->uri->segment(2).'/' );
                $this->data['offset'] = $this->uri->segment(4);
                $this->data['activity_tab'] = $this->uri->segment(3);
                $config['base_url'] = base_url('kullanici/').$this->uri->segment(2).'/'.$this->uri->segment(3);
            }

            if (($this->uri->segment(3) == '') || is_numeric($this->uri->segment(3))) {
                $config['total_rows'] = count($this->user_model->user_overview(urldecode($this->uri->segment(2)), null, null, 'overview'));
            } elseif ($this->uri->segment(3) == 'gonderileri') {
                $config['total_rows'] = count($this->user_model->user_submitted(urldecode($this->uri->segment(2)), null, null));
            } elseif ($this->uri->segment(3) == 'yorumlari') {
                $config['total_rows'] = count($this->user_model->user_comments(urldecode($this->uri->segment(2)), null, null));
            } elseif ($this->uri->segment(3) == 'evetoylari') {
                $config['total_rows'] = count($this->user_model->user_overview(urldecode($this->uri->segment(2)), null, null, 'upvoted'));
            } elseif ($this->uri->segment(3) == 'hayiroylari') {
                $config['total_rows'] = count($this->user_model->user_overview(urldecode($this->uri->segment(2)), null, null, 'downvoted'));
            } elseif ($this->uri->segment(3) == 'favorileri') {
                $config['total_rows'] = count($this->user_model->user_overview(urldecode($this->uri->segment(2)), null, null, 'favourites'));
            } else {
                redirect(base_url('kullanici/').$this->uri->segment(2).'/');
            }

            $config['per_page'] = 10;
            $config['full_tag_open'] = '<p>'; //class = "btn"
            $config['prev_link'] = '<span class="glyphicon glyphicon-arrow-left"></span> <span class="pagination">??nceki sayfa</span>';
            $config['next_link'] = '<span class="pagination">Sonraki sayfa</span> <span class="glyphicon glyphicon-arrow-right"></span>';
            $config['full_tag_close'] = '</p>';
            $config['display_pages'] = false; //The "number" link is not displayed
            $config['first_link'] = false; //The start link is not displayed
            $config['last_link'] = false;
            $config['next_tag_open'] = '<span style="float:right;">';
            $config['next_tag_close'] = "</span>";
            $this->pagination->initialize($config);
            $this->data['per_page'] = $config['per_page'];

            if (($this->uri->segment(3) == '') || is_numeric($this->uri->segment(3))) {
                $this->data['link'] = $this->user_model->user_overview(urldecode($this->uri->segment(2)), $config['per_page'], $this->data['offset'], 'overview');
                $this->data['title'] = urldecode($this->uri->segment(2)).' kullan??c??s??n??n ??zeti';
            } elseif ($this->uri->segment(3) == 'gonderileri') {
                $this->data['link'] = $this->user_model->user_submitted(urldecode($this->uri->segment(2)), $config['per_page'], $this->data['offset']);
                $this->data['title'] = urldecode($this->uri->segment(2)).' taraf??ndan g??nderilenler';
            } elseif ($this->uri->segment(3) == 'yorumlari') {
                $this->data['link'] = $this->user_model->user_comments(urldecode($this->uri->segment(2)), $config['per_page'], $this->data['offset']);
                $this->data['title'] = urldecode($this->uri->segment(2)).' taraf??ndan yap??lan yorumlar';
            } elseif ($this->uri->segment(3) == 'evetoylari') {
                $this->data['link'] = $this->user_model->user_overview(urldecode($this->uri->segment(2)), $config['per_page'], $this->data['offset'], 'upvoted');
                $this->data['title'] = urldecode($this->uri->segment(2)).' kullan??c??s??n??n evet oylar??';
            } elseif ($this->uri->segment(3) == 'hayiroylari') {
                $this->data['link'] = $this->user_model->user_overview(urldecode($this->uri->segment(2)), $config['per_page'], $this->data['offset'], 'downvoted');
                $this->data['title'] = urldecode($this->uri->segment(2)).' kullan??c??s??n??n hay??r oylar??';
            } elseif ($this->uri->segment(3) == 'favorileri' && $this->session->userdata('username') == urldecode($this->uri->segment(2))) {
                $this->data['link'] = $this->user_model->user_overview(urldecode($this->uri->segment(2)), $config['per_page'], $this->data['offset'], 'favourites');
                $this->data['title'] = urldecode($this->uri->segment(2)).' kullan??c??s??n??n favorileri';
            } else {
                redirect(base_url('kullanici/').$this->uri->segment(2).'/');
            }

            foreach ($this->data['link'] as &$link_item) {
                $link_item['seo_segment'] = str_replace(" ", "-", strtolower(implode(' ', array_slice(preg_split('/\s+/', preg_replace('/[^a-zA-Z0-9????????????????????????\s]+/', '', $link_item['title'])), 0, 6))));
            }
            unset($link_item);

            $this->load->view('templates/header', $this->data);
            $this->load->view('user/index', $this->data);
            $this->load->view('templates/side');
            $this->load->view('templates/footer');
        }

        public function register()
        {
            $this->data['title'] = "??ye ol";

            $reserved_usernames = 'regex_match[/^((?!admin).)*$/i]|regex_match[/^((?!moderator).)*$/i]|regex_match[/^((?!register).)*$/i]|regex_match[/^((?!login).)*$/i]|regex_match[/^((?!logout).)*$/i]|regex_match[/^((?!is_username_available).)*$/i]|regex_match[/^((?!captcha).)*$/i]|regex_match[/^((?!is_user_logged_in).)*$/i]|regex_match[/^((?!allah).)*$/i]';
            $this->form_validation->set_rules('username', '<b>Kullan??c?? ad??</b>', 'trim|required|min_length[3]|max_length[19]|is_unique[user.username]|'.$reserved_usernames.'|xss_clean');
            $this->form_validation->set_rules('email', '<b>E-posta</b>', 'required|valid_email|is_unique[user.email]|xss_clean');
            $this->form_validation->set_rules('password', '<b>??ifre</b>', 'trim|required|min_length[6]|matches[passconf]|xss_clean');
            $this->form_validation->set_rules('passconf', '<b>??ifrenizi do??rulay??n</b>', 'required|xss_clean');
            $this->form_validation->set_rules('captcha', '<b>Do??rulama kodu</b>', 'trim|required|exact_length[4]|strtolower|xss_clean|regex_match[/'.$this->session->userdata('captcha').'/i]');

            if ($this->form_validation->run() === false) {
                $this->load->view('templates/header', $this->data);
                $this->load->view('user/register');
                $this->load->view('templates/footer');
            } else {
                $this->user_model->insert_user();

                //$this->load->view('templates/header',$this->data);
                //$this->load->view('link/index',$this->data);
                //$this->load->view('templates/footer');

                $to_email = $this->input->post('email');
                $email_subject = "Kayd??n??z ba??ar??yla tamamland??";
                $email_msg = "Kayd??n??z ba??ar??yla tamamland??. Art??k <a href='http://telve.net/'>telve.net</a>'i her y??n??yle kullanabilirsiniz.
				<br><br>
				??nternetin ??n sayfas??: <a href='http://telve.net/'>telve.net</a>
				<br><br>
				<a href='http://telve.net/'><img width='200px' src='http://telve.net/assets/img/logo/twitter-logo.png'/></a>
				<br><br>
				<i>*Bu e-postaya cevap yazman??za gerek yoktur.</i>";
                $smtp_config = array(
                    'protocol' => $this->config->item('smtp_protocol'),
                    'smtp_host' => $this->config->item('smtp_host'),
                    'smtp_port' => $this->config->item('smtp_port'),
                    'smtp_user' => $this->config->item('smtp_user'),
                    'smtp_pass' => $this->config->item('smtp_pass'),
                    'charset' => 'utf8',
                    'mailtype' => 'html',
                    'newline' => "\r\n",
                );
                $this->load->library('email', $smtp_config);
                $this->email->from($this->config->item('smtp_user'), $this->config->item('smtp_from_name'));
                $this->email->to($to_email);
                $this->email->subject($email_subject);
                $this->email->message($email_msg);
                $this->email->send();

                $this->session->set_flashdata('register_is_successful', 1);
                redirect(''); //default: hot/index
            }
        }

        public function login()
        {
            $this->data['title'] = "Giri?? yap";
            $this->form_validation->set_rules('username', '<b>Kullan??c?? ad??</b>', 'required|xss_clean');
            $this->form_validation->set_rules('password', '<b>??ifre</b>', 'required|xss_clean');

            if ($this->form_validation->run() == false) {
                $this->data['login_error'] = "";
                $this->load->view('templates/header', $this->data);
                $this->load->view('user/login');
                $this->load->view('templates/footer');
            } else {
                if ($this->user_model->authenticate()) {
                    $session['username'] = $this->input->post('username');
                    $this->session->set_userdata($session);
                    if (!empty($this->input->post('remember'))) {
                        $this->load->helper('cookie');
                        $cookie = $this->input->cookie('ci_session'); // we get the cookie
                        $this->input->set_cookie('ci_session', $cookie, '2592000'); // and add 30 days to it's expiration
                    }
                    $this->session->set_flashdata('login_is_successful', 1);
                    redirect(''); //default: hot/index
                } else {
                    $this->data['login_error'] = 'Giri?? ba??ar??s??z, l??tfen bilgilerinizi kontrol edin!<br>';
                    $this->load->view('templates/header', $this->data);
                    $this->load->view('user/login');
                    $this->load->view('templates/footer');
                }
            }
        }

        public function logout()
        {
            $this->session->sess_destroy();
            redirect(''); //default: hot/index
        }

        public function is_username_available()
        {
            if (strlen($this->input->post('username')) < 3) {
                echo "<span style='color:red'>Kullan??c?? ad??n??z en az 3 karakter olmal??d??r!</span>";
            } elseif (strlen($this->input->post('username')) > 19) {
                echo "<span style='color:red'>Kullan??c?? ad??n??z 20 karakterden az olmal??d??r!</span>";
            } else {
                if ($this->user_model->check_username()) {
                    echo "<span style='color:red'>??zg??n??z, bu kullan??c?? ad?? zaten al??nm????</span>";
                } else {
                    echo "<span style='color:green'>Kullan??c?? ad?? kullan??labilir</span>";
                }
            }
        }

        public function captcha()
        {
            $this->load->library('captcha');
            $this->load->helper('string');

            $rand_str = random_string('alnum', 4);
            $captcha = new Captcha(220, 80, $rand_str);
            $captcha->showImg();
            $this->session->set_userdata('captcha', strtolower($rand_str));
        }

        public function is_user_logged_in()
        {
            echo $this->data['is_user_logged_in'];
        }
    }

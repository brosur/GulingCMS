<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Web extends CI_Controller {

        function __construct() {
            parent::__construct();
            $this->theme->set_theme('cleanyblogs');
        }
	public function index()
	{
            $data['posts'] = Post::all(array('post_type' => 'post'));
            $data['navs'] = Post::all(array('post_type' => 'page'));
            
            if(!$data['posts']){
                redirect('web/error/404/NotFound');
            }
            
            
            $this->theme->view('posts', $data);
	}
	public function articles($id, $title  = NULL)
	{
            if(!$id){
                redirect('web');
            }
            $data['posts'] = Post::all(array('id' => $id, 'post_status' => 'active'));
            $data['navs'] = Post::all(array('post_type' => 'page'));
            
            if(!$data['posts']){
                redirect('web/error/404/NotFound');
            }
            
            
            $this->theme->view('single', $data);
	}
	public function pages($id, $title = NULL)
	{
            if(!$id){
                redirect('web');
            }
            $data['posts'] = Post::all(array('id' => $id, 'post_status' => 'active'));
            $data['navs'] = Post::all(array('post_type' => 'page'));
            
            if(!$data['posts']){
                redirect('web/error/404/NotFound');
            }
            
            $this->theme->view('page', $data);
	}
	public function categories($id)
	{
            if(!$id){
                redirect('web');
            }
            $join = 'LEFT JOIN post_to_categories a ON(posts.id = a.post_id) WHERE category_id = '.$id;
            $data['posts'] = Post::all(array('joins' => $join));
            $data['navs'] = Post::all(array('post_type' => 'page'));
            
            if(!$data['posts']){
                redirect('web/error/404/NotFound');
            }
            
            
            $this->theme->view('categories', $data);
	}
	public function tags($id)
	{
            if(!$id){
                redirect('web');
            }
            $join = 'LEFT JOIN post_to_tags a ON(posts.id = a.post_id) WHERE tag_id = '.$id.' AND post_status = "active"' ;
            $data['posts'] = Post::all(array('joins' => $join));
            $data['navs'] = Post::all(array('post_type' => 'page'));
            
            if(!$data['posts']){
                redirect('web/error/404/NotFound');
            }
            
            
            $this->theme->view('tags', $data);
	}
        
	public function error($errco = 0, $errtit = NULL)
	{   
            $data['errors'] = array('codes' => $errco, 'title' => $errtit);
            $this->theme->set_theme('errors');
            $this->theme->view('errors', $data);
	}
}
//test
/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
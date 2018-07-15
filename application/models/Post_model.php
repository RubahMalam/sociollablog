<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Post_model extends CI_Model{

	public function __construct(){
		parent::__construct();
		$this->load->helper('cleanurl_helper');
		$this->load->helper('tglindo_helper');
	}

	public function create($table,$data){
		$tags = explode(',',$data['tags']);
		
		unset($data['tags']);
		$this->db->insert($table,$data);
		
		//insert tags
		$this->db->select('max(id) as id');
		$this->db->from('tbl_post');
		$max_id = $this->db->get()->result()[0]->id;
		
		foreach($tags as $tag) {
			$data = array(
						'tag' => $tag,
						'post_id' => $max_id, 
					);
			$this->db->insert('tags',$data);
		}
		return NULL;
		
	}

	// Blog Home
	public function read($table,$limit,$offset){
		$this->db->from($table);
		$this->db->limit($limit,$offset);
		$this->db->order_by('ID', 'DESC');
		$query = $this->db->get();
		
		if($query->num_rows() > 0){
			foreach($query->result_array() as $row){
				$data[] = $row;
			}
			$query->free_result();
		}
		else{
			$data = NULL;
		}
		
		return $data;
	}
	
	// Artikel berdasarkan tags
	public function read_by_tags($table,$limit,$offset,$tag){
		$this->db->from($table);
		$this->db->join('tags', 'tags.post_id = '.$table.'.ID and tags.tag ="'.str_replace('%20', ' ', $tag).'"','INNER',FALSE);
		$this->db->limit($limit,$offset);
		$this->db->order_by('ID', 'DESC');
		$query = $this->db->get();
		
		if($query->num_rows() > 0){
			foreach($query->result_array() as $row){
				$data[] = $row;
			}

			$query->free_result();
		}
		else{
			$data = NULL;
		}
		
		return $data;
	}
	
	// Komentar berdasarkan artikel
	public function read_komen($id){
		$sql = $this->db->query('select * from comment where id = "'.$id.'"');
		return $sql->result();
	}
	
	// Tags berdasarkan artikel
	public function get_tags($id){
		$sql = $this->db->query('select * from tags where post_id = "'.$id.'"');
		return $sql->result();
	}
	
	// Menampilkan artikel berdasarkan id - edit purpose
	public function edit($id,$table){
		$this->db->where('ID',$id);
		$query = $this->db->get($table);
		if($query->num_rows() > 0){
			$data = $query->row();
			$query->free_result();
		}
		else{
			$data = NULL;
		}

		return $data;
	}

	// Mengupdate artikel
	public function update($id,$data,$table){
		$this->db->where('ID',$id);
		$this->db->update($table,$data);		
	}
	
	// Menghapus Artikel
	public function delete($id,$table){
		$this->db->where('ID',$id);
		$this->db->delete($table);
	}

	// Total data dari semua Artikel - buat paginasi
	public function total_rows($table){
		return $this->db->count_all_results($table);
	}
	
	// Total artikel berdasarkan tag yang dipilih - buat paginasi
	public function total_rows_tags($tag){
		$this->db->select('id');
		$this->db->from('tbl_post');
		$this->db->where('id="'.$tag.'"');
		$num_results = $this->db->count_all_results();
		return $num_results;
	}

	public function baca_artikel($id){
		$sql = $this->db->query("select * from tbl_post where id='".$id."'");
		return $sql->result_array();
	}	

	// Halaman testimoni
	public function readtesti($table,$limit,$offset){
		$this->db->from($table);
		$this->db->limit($limit,$offset);
		$this->db->order_by('testi_id', 'DESC');
		$query = $this->db->get();
		
		if($query->num_rows() > 0){
			foreach($query->result_array() as $row){
				$data[] = $row;
			}
			$query->free_result();
		}
		else{
			$data = NULL;
		}
		
		return $data;
	}	

	// Hapus testimoni
	public function deletetesti($id,$table){
		$this->db->where('testi_id',$id);
		$this->db->delete($table);
	}	
	
}
<?php
 	class familia
 	{
 		public $id;
		public $dni;
 		public $provincia;
  		public $nombre;
  		public $sexo;
  		public $direccion;
  		public $localidad;
  		public $parentesco;
  		
  			public static function TraerFamiliares()
			{
				$objetoAccesoDatos = AccesoDatos::dameUnObjetoAcceso();
				$consulta = $objetoAccesoDatos->RetornarConsulta("CALL TraerFamiliares");
				$consulta->execute();
				return $consulta->fetchAll(PDO::FETCH_CLASS, 'familia');
			}

			public function InsertarFamiliares()
			{
				$objetoAccesoDatos = AccesoDatos::dameUnObjetoAcceso();
				$consulta = $objetoAccesoDatos->RetornarConsulta("CALL InsertarFamiliares(:dni, :pro, :nom,:sexo, :dire, :loca, :paren)");
				
				$consulta->bindValue(':dni', $this->dni, PDO::PARAM_STR); //los parametros tienen q estar siempre en el mismo orden q la bd sino no anda bien
				$consulta->bindValue(':pro', $this->provincia, PDO::PARAM_STR);
				$consulta->bindValue(':nom', $this->nombre, PDO::PARAM_STR);
				$consulta->bindValue(':sexo', $this->sexo, PDO::PARAM_STR);
				$consulta->bindValue(':dire', $this->direccion, PDO::PARAM_STR);
				$consulta->bindValue(':loca', $this->localidad, PDO::PARAM_STR);
				$consulta->bindValue(':paren', $this->parentesco, PDO::PARAM_STR);
			
				$consulta->execute();
			}

			public function ModificarFamiliares()
			{
				$objetoAccesoDatos = AccesoDatos::dameUnObjetoAcceso();
				$consulta = $objetoAccesoDatos->RetornarConsulta("CALL ModificarFamiliares(:pid, :pdni,:ppro, :pnom,:psexo, :pdire, :ploca, :pparen )");
				
				$consulta->bindValue(':pid', $this->id, PDO::PARAM_INT);
				$consulta->bindValue(':pdni', $this->dni, PDO::PARAM_STR); //los parametros tienen q estar siempre en el mismo orden q la bd sino no anda bien
				$consulta->bindValue(':ppro', $this->provincia, PDO::PARAM_STR);
				$consulta->bindValue(':pnom', $this->nombre, PDO::PARAM_STR);
				$consulta->bindValue(':psexo', $this->sexo, PDO::PARAM_STR);
				$consulta->bindValue(':pdire', $this->direccion, PDO::PARAM_STR);
				$consulta->bindValue(':ploca', $this->localidad, PDO::PARAM_STR);
				$consulta->bindValue(':pparen', $this->parentesco, PDO::PARAM_STR);
				
				$consulta->execute();
			}

			public function BorrarFamiliares()
			{
				$objetoAccesoDatos = AccesoDatos::dameUnObjetoAcceso();
				$consulta = $objetoAccesoDatos->RetornarConsulta("CALL BorrarFamiliares(:id)");
				$consulta->bindValue(':id', $this->id, PDO::PARAM_INT);				
				$consulta->execute();
			}

			public static function TraerUnFamiliar($id) 
			{
			$objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
			$consulta =$objetoAccesoDato->RetornarConsulta("CALL TraerUnFamiliar($id)");//("SELECT * from voto where id = $id");
			$consulta->execute();				 
			$votoBuscado= $consulta->fetchObject('familia');
			return $votoBuscado;			
			}

 	}
?>
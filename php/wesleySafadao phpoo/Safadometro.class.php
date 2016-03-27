<?php

/**
 * Safadometro.class [ CLASSE ]
 * Calculo de safadeza
 * @copyleft 2016, David A. Simoes
 */
class Safadometro {

	private $safadeza;
	private $anjo;
	private $diaNascimento;
	private $mesNascimento;
	private $anoNascimento;

	function getSafadeza() {
		return $this->safadeza;
	}

	function getAnjo() {
		return $this->anjo;
	}

	function setSafadeza($safadeza) {
		$this->safadeza = $safadeza;
	}

	function setAnjo($anjo) {
		$this->anjo = $anjo;
	}

	public function somatorio($mes) {
		$sum = array_sum(range(1, $mes));
		return $sum;
	}

	public function wesleySafadao($dia, $mes, $ano) {
		$this->setSafadeza($this->somatorio($mes) + ($ano / 100) * (50 - $dia));
		$this->setAnjo(100 - $this->getSafadeza());
		echo"Voce e {$this->getSafadeza()} % Safado e {$this->getAnjo()} % Anjo";
	}

}

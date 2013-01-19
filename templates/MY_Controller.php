<?php
class My_Controller extends CI_Controller {
	protected $_layout;  // 共通レイアウト指定用プロパティ
	protected $_prefix = 'layout';

	public function __construct() {
		parent::__construct();
	}

	/**
	 * 指定した共通レイアウトを使用してviewを表示する
	 *
	 *
	 **/
	protected function _render($view, $data = null) {
		// 共通レイアウトがセットされていない場合は、通常のloadを実行するだけ
		if (is_null($this->_layout)) {
			$this->load->view($view, $data);
			return;
		}

		// レイアウト指定がある場合は、デフォルトでlayoutディレクトリを探しに行く
		$this->_layout = "{$this->_prefix}/{$this->_layout}";

		// 指定したviewをレンダリングして、指定した共通レイアウトに渡す
		$content['content'] = $this->load->view($view, $data, true);
		$this->load->view($this->_layout, $content);
	}
}

?>



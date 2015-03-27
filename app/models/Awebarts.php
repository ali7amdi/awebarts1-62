<?php

/*
 * Description of Awebarts
 *  main class will include the main fuctions 
 * @author Ali7amdi
 */

class Awebarts {
    
    
    private $cxn;
    
    function connectToDb()
    {
        //require_once MODELS.'Database.php';
        $vars = "includes/vars.php";
        $this->cxn = new Database($vars);
    }
    
    function close()
    {
        $this->cxn->close();
    }
    
}

?>

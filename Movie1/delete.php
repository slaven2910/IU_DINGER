<?php
    function delete($commentId){
        $deleteLine = "DELETE FROM commentMock WHERE commentId = $commentId";
        executeSQL($deleteLine);
        return  "deleted successfully";
    }
?>
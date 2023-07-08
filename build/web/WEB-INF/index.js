 <script src="jqjs/jquery-3.7.0.min.js"></script>


 <script>       
            $(document).ready(function(){
            
              $("#l1").click(function(){
              $("#l1").hide()
              $().html("<img src='image/giphy.gif'>");
              )};
              
            
            
                $(#l1).click(function(){
               $.get("FirstWeekTask",function(data){
                $("#lin").html(data);
                  });
               })
               
               
            });
        </script>

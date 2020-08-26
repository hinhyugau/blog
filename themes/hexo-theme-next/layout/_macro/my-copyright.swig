 {% if page.copyright %}
  <div class="my_post_copyright">
    <script src="//cdn.bootcss.com/clipboard.js/1.5.10/clipboard.min.js"></script>
    
    <!-- JS库 sweetalert 可修改路径 -->
    <script src="https://cdn.bootcss.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <p><span>title:</span><a href="{{ url_for(page.path) }}">{{ page.title }}</a></p>
    <p><span>author:</span><a href="/" title="access {{ theme.author }} blog">{{ theme.author }}</a></p>
    <p><span>release time:</span>{{ page.date.format("MM/DD/YYYY - HH:mm") }}</p>
    <p><span>latest update:</span>{{ page.updated.format("MM/DD/YYYY - HH:mm") }}</p>
  <p><span>Original link:</span><a href="{{ url_for(page.path) }}" title="{{ page.title }}">{{ page.permalink }}</a>
      <span class="copy-path"  title="Click to copy the article link"><i class="fa fa-clipboard" data-clipboard-text="{{ page.permalink }}"  aria-label="Copy successfully!"></i></span>
    </p>
    <p><span>Copyright Notice:</span>All articles in this blog are used except for special statements <a rel="license" href="https://creativecommons.org/licenses/by-nc-nd/4.0/" target="_blank" title="Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0)">BY-NC-SA </a>agreement. Please indicate the source!</p>  
  </div>
  <script> 
      var clipboard = new Clipboard('.fa-clipboard');
        $(".fa-clipboard").click(function(){
        clipboard.on('success', function(){
          swal({   
            title: "",   
            text: 'Copy successfully!',
            icon: "success", 
            showConfirmButton: true
            });
          });
      });  
  </script>
  {% endif %}
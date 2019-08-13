<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">

	<head>
		<title>Love in Daily</title>
	<!-- stylesheet.jsp -->
	<c:import url="../common/stylesheet.jsp" />
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  	
	</head>
	
<body>


	<!-- header 영역 -->
	<c:import url="../common/header.jsp" />
	


    <div class="container">

      <!-- Timeline
      ================================================= -->
      <div class="timeline">
       
       <c:import url="search-cover.jsp"/>
   
          <div class="row">
          
          <div class="col-md-3 static">
            <div class="profile-card">
               <img src="http://placehold.it/300x300" alt="user" class="profile-photo">
               <h5><a href="timeline.html" class="text-white">Sarah Cruiz</a></h5>
               <a href="#" class="text-white"><i class="ion ion-android-person-add"></i> 1,299 followers</a>
            </div><!--profile card ends-->
            <div id="chat-block">
              <div class="title">Chat online</div>
              <ul class="online-users list-inline">
                <li><a href="newsfeed-messages.html" title="Linda Lohan"><img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo"><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Sophia Lee"><img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo"><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="John Doe"><img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo"><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Alexis Clark"><img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo"><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="James Carter"><img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo"><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Robert Cook"><img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo"><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Richard Bell"><img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo"><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Anna Young"><img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo"><span class="online-dot"></span></a></li>
                <li><a href="newsfeed-messages.html" title="Julia Cox"><img src="http://placehold.it/300x300" alt="user" class="img-responsive profile-photo"><span class="online-dot"></span></a></li>
              </ul>
            </div><!--chat block ends-->
          </div>
          
          
          
            <div class="col-md-3"></div>
            <div class="col-md-7">

			 
			 	<div class="create-post">
							<div class="row">
								<div class="col-md-12">
									<div class="tools">
									   <div class="input-group ui-widget">

                                                        <div class="input-group-btn">
                                                            <button class="btn btn-primary">
                                                                <i class="fa fa-search"></i> Search
                                                            </button>
                                                        </div>
                                                        <form id="go" action="search.do" class="form-inline m-0" onsubmit="return false;">
                                                        <input type="text" id="searchForm" name="input1-group2" placeholder="Search friends, photos, videos" class="form-control">
                                                        </form>
                                                    </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- Post Create Box End-->
          
             
              <!-- Photo Album
              ================================================= -->
              <ul class="album-photos">
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-1">
                    <img src="http://placehold.it/1000x1000" alt="photo" />
                  </div>
                  <div class="modal fade photo-1" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="photo" />
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-2">
                    <img src="http://placehold.it/1000x1000" alt="photo" />
                  </div>
                  <div class="modal fade photo-2" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="photo" />
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-3">
                    <img src="http://placehold.it/1000x1000" alt="photo" />
                  </div>
                  <div class="modal fade photo-3" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="photo" />
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-4">
                    <img src="http://placehold.it/1000x1000" alt="photo" />
                  </div>
                  <div class="modal fade photo-4" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="photo" />
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-5">
                    <img src="http://placehold.it/1000x1000" alt="photo" />
                  </div>
                  <div class="modal fade photo-5" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="" />
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-6">
                    <img src="http://placehold.it/1000x1000" alt="photo" />
                  </div>
                  <div class="modal fade photo-6" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="" />
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-7">
                    <img src="http://placehold.it/1000x1000" alt="photo" />
                  </div>
                  <div class="modal fade photo-7" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="" />
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-8">
                    <img src="http://placehold.it/1000x1000" alt="photo" />
                  </div>
                  <div class="modal fade photo-8" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="" />
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="img-wrapper" data-toggle="modal" data-target=".photo-9">
                    <img src="http://placehold.it/1000x1000" alt="photo" />
                  </div>
                  <div class="modal fade photo-9" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <img src="http://placehold.it/1000x1000" alt="" />
                      </div>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
            <div class="col-md-2 static">
              <div id="sticky-sidebar">
                <h4 class="grey">Sarah's activity</h4>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Commended on a Photo</p>
                    <p class="text-muted">5 mins ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Has posted a photo</p>
                    <p class="text-muted">an hour ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Liked her friend's post</p>
                    <p class="text-muted">4 hours ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> has shared an album</p>
                    <p class="text-muted">a day ago</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>


    
     <!-- footer -->
    <c:import url="../common/footer.jsp" />
    
    <!--preloader-->
    <div id="spinner-wrapper">
      <div class="spinner"></div>
    </div>


    <!-- script  -->
	<c:import url="../common/scripts.jsp" />
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	
<script>
 var curinput;
$(function() {   
    $("#searchForm").autocomplete({
    	
    	source: function( request, response ) { 
    	console.log(request.term);
            $.ajax({
            	type: 'post',
            	dataType: "json",
              url: "searchAccount.do",
              data: {
                term: request.term
              },
              success: function(data) { 

            	  var cnt = 0;
            	  console.log(data);
            	  response(
            			  $.map(data, function(item) {
            					  return {
                        			  label: item.id,
                        			  value: item.id,
                        			  tag: item.tags,
                        			  count: item.count,
                        			  category : item.category,
                        			  index: cnt++,
                        			  link: item.link,
                        			  /* img: item.img,
                        			  name: item.name */ 
                        		  }
            					  console.log(link);
            	  })
            	  );
            	  

                
                }
            });

          },
         select: function(event, ui) {     
            console.log(ui.item);
            
            window.location = ui.item.link;
        },  

        focus: function(event, ui) {

        	$(".div0").css("background", "none");
        	$("#autodiv"+ui.item.index).css("background-color", "lightgrey");
        	console.log(ui.item.index);
        	return false;

        },
        messages: {
            noResults: '',
            results: function() {}
        }

    })
    .autocomplete("instance")._renderItem = function(div, item) {

    	if(item.category == "People") {
    		return $("<div class='div0' id='autodiv"+item.index+"'>").append("<div><div id='div1'><div><img  id='searchimg' style='width:50px; height:50px;' src='${pageContext.request.contextPath}/resources/images/icon/account_img3.png'><div id='textdiv'><span style='color: black; font-weight: bold; font-size: 16px; float:right;'>"+item.label+"</div></span><br></div></div></div>").appendTo(div);
    		/* return $("<div class='div0' id='autodiv"+item.index+"'>").append("<div><div id='div1'><img  id='searchimg' src='"+item.img+""><div id='textdiv'><span style='color: black; font-weight: bold; font-size: 16px;'>"+item.label+"</span><br><span style='color: gray;'>"+item.name+"</span></div></div></div>").appendTo(div); */
    		/* return $("<div class='div0' id='autodiv"+item.index+"'>").append("<div><div id='div1'><img  id='searchimg' src='"+item.img+"'><div id='textdiv'><span style='color: black; font-weight: bold; font-size: 16px;'>"+item.label+"</span><br><span style='color: gray;'>"+item.name+"</span></div></div></div>").appendTo(div); */
    	}else if(item.category == "Tag") {
    		return $("<div class='div0' id='autodiv"+item.index+"'>").append("<div><div id='div1'><div id='textdiv'><span style='color: black; font-weight: bold; font-size: 16px;'>#"+item.tag+"</span><br><span style='color: gray;'>게시물 "+item.count+"개</span></div></div></div>").appendTo(div);
    		/* return $("<div class='div0' id='autodiv"+item.index+"'>").append("<div><div id='div1'><img id='searchimg' src='"+item.img+"'><div id='textdiv'><span style='color: black; font-weight: bold; font-size: 16px;'>#"+item.tag+"</span><br><span style='color: gray;'>게시물 "+item.count+"개</span></div></div></div>").appendTo(div); */
    	}
    };
    
    
    
    

}); 
</script>
  </body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
   <head>
      <title>Love in Daily</title>
   <!-- stylesheet.jsp -->
   <c:import url="../common/stylesheet.jsp" />
   
   <style>
        .carousel-inner {
           border-radius: 10px;
           border : 2px solid #efefef;
        }
        
        #custom_carousel .item {
            color: #000;
            background-color: #eee;
            width : 100%;
            height : 100%;
            
        }
        
        #custom_carousel .controls {
            overflow-x: auto;
            overflow-y: hidden;
            padding: 0;
            margin: 0;
            white-space: nowrap;
            text-align: center;
            position: relative;
        }
        
        #custom_carousel .controls {
           margin-top : 20px;
        }
        
        
        #custom_carousel .controls li {
            display: table-cell;
            width: 1%;
            max-width: 100px;
            margin : 0 auto;
            
        }
        #custom_carousel .controls li a {
           max-width : 90%;
           border-radius: 10px;
           height: 120px;
        }
        #custom_carousel .controls li a img {
           border-radius: 5px;
           height: 120px;
        }
        #custom_carousel .controls li a:active {
           
           height: 120px;
           max-width : 90%;
           
        }
        
       
        
        #custom_carousel .controls a small {
            overflow: hidden;
            display: block;
            font-size: 10px;
            margin-top: 5px;
            font-weight: bold
        }
        .nav {
           padding-left : 15px;
           height: 120px;
        }
        
        #aboutLeft{
           margin-top : 80px;
           text-align: left;
           padding-left : 30px;
           
           
           
        }
      #aboutLeft p {
         font-size : 16px;
            border-bottom: 1px solid #f1f2f2;
            margin : 20px 10px;
            padding-bottom: 10px;
      }
      #aboutLeft p span {
         margin : 0 auto;
         
      }
    </style>
   
   </head>
<body>
   <!-- header 영역 -->
   <c:import url="../common/header.jsp" />

    <div class="container">

      <!-- Timeline
      ================================================= -->
      <div class="timeline">
       
       <c:import url="friendpage-cover.jsp">
          <c:param name="about" value="active"></c:param>
       </c:import>
           
        <div id="page-contents">
          <div class="row">
            <div class="col-md-3" id="aboutLeft">
               <div class="about-content-block">
                  <h4 class="grey"><i class="ion-ios-information-outline icon-in-title"></i> 정보</h4>
                     <p>닉네임 : <span>안녕하세요</span></p>
                     <p>성별 : <span>남자</span></p>
                     <p>나이 : <span>20</span></p>
                </div>
            </div>
            <div class="col-md-7">

              <!-- About
              ================================================= -->
              <div class="about-profile">
                <div class="about-content-block">
                  <h4 class="grey"><i class="ion-ios-information-outline icon-in-title"></i>프로필 사진</h4>
                  <div class="row">
             <div class="featurette" id="about">
            <!------------------------code---------------start---------------->
            <div class="container-fluid">
                <div id="custom_carousel" class="carousel slide" data-ride="carousel" data-interval="5000">
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12">
                                        
                                    <img src="${pageContext.request.contextPath}/resources/images/FeedImage/2_20190811133459_0.jpeg" class="img-responsive">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12">
                                        
                                    <img src="${pageContext.request.contextPath}/resources/images/FeedImage/1_20190812131343_2.jpeg" class="img-responsive">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12">
                                        
                                    <img src="${pageContext.request.contextPath}/resources/images/FeedImage/1_20190812131343_2.jpeg" class="img-responsive">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12">
                                        
                                    <img src="${pageContext.request.contextPath}/resources/images/FeedImage/1_20190812131343_2.jpeg" class="img-responsive">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="container-fluid">
                                <div class="row">
                                   <div class="col-md-12">
                                        
                                    <img src="${pageContext.request.contextPath}/resources/images/FeedImage/1_20190812131343_2.jpeg" class="img-responsive">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Item -->
                    </div>
                    <!-- End Carousel Inner -->
                    <div class="controls">
                        <ul class="nav">
                            <li data-target="#custom_carousel" data-slide-to="0" class="active">
                                <a href="#"><img src="${pageContext.request.contextPath}/resources/images/FeedImage/2_20190811133459_0.jpeg" class="img-responsive"></a>
                            </li>
                            <li data-target="#custom_carousel" data-slide-to="1">
                                <a href="#"><img src="${pageContext.request.contextPath}/resources/images/FeedImage/1_20190812131343_2.jpeg" class="img-responsive"></a>
                            </li>
                            <li data-target="#custom_carousel" data-slide-to="2">
                                <a href="#"><img src="${pageContext.request.contextPath}/resources/images/FeedImage/1_20190812131343_2.jpeg" class="img-responsive"></a>
                            </li>
                            <li data-target="#custom_carousel" data-slide-to="2">
                                <a href="#"><img src="${pageContext.request.contextPath}/resources/images/FeedImage/1_20190812131343_2.jpeg" class="img-responsive"></a>
                            </li>
                            <li data-target="#custom_carousel" data-slide-to="2">
                                <a href="#"><img src="${pageContext.request.contextPath}/resources/images/FeedImage/1_20190812131343_2.jpeg" class="img-responsive"></a>
                            </li>
                            
                        </ul>
                       </div>
                   </div>
                      <!-- End Carousel -->
                  </div>
                  <!----Code------end----------------------------------->
              </div>
         </div>
                </div>
                
                
                
                
                <div class="about-content-block">
                  <h4 class="grey"><i class="ion-ios-information-outline icon-in-title"></i>자기 소개</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur</p>
                </div>
              </div>
              
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
    </div>

     <!-- footer -->
    <c:import url="../common/footer.jsp" />
    
    <!--preloader-->
    <div id="spinner-wrapper">
      <div class="spinner"></div>
    </div>

    <!-- script  -->
   <c:import url="../common/scripts.jsp" />
   
   <script>
   /* 프로필 사진 ============================  */
            $(document).ready(function (ev) {
                $('#custom_carousel').on('slide.bs.carousel', function (evt) {
                    $('#custom_carousel .controls li.active').removeClass('active');
                    $('#custom_carousel .controls li:eq(' + $(evt.relatedTarget).index() + ')').addClass('active');
                })
            });
        </script>
    
  </body>
</html>
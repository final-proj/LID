<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<div class="col-sm-3">
            <div class="faq_contact">
              <div class="faq-headline">
                <h3 class="item-title grey"><i class="icon ion-ios-help-outline"></i>Still Confused?</h3>
                <p>Contact us if you still have any question.</p>
              </div>
              <div class="reach-out">
              	<div class="method by-email"><a href="${pageContext.request.contextPath}/customerService/csCenter.do"> 
              	<i class="icon ion-help-circled"></i> 고객센터</a></div>
              	
                <div class="method by-forum"><a href="${pageContext.request.contextPath}/customerservice/csQList.do">
                <i class="icon ion-chatboxes"></i>문의 내역</a></div>
                
                
                
                
                 <div class="media">
            	<div class="row js-masonry" data-masonry='{ "itemSelector": ".grid-item", "columnWidth": ".grid-sizer", "percentPosition": true }'>
                
        
                 <!--Popup-->
                    <div class="modal fade modal-1" tabindex="-1" role="dialog" aria-hidden="true">
                      <div class="modal-dialog modal-lg">
                        <div class="modal-content" style=" margin-top : 30%;">
                                                
						<div id="map" style="width:100%;height:500px;"></div>
                          
                       
                        </div>
                      </div>
                    </div><!--Popup End-->
          
                <div class="method by-ticket" data-toggle="modal" data-target=".modal-1" ><a href="#"> <i class="icon ion-help-circled"></i> Love in Daily 위치 정보</a></div>
                
                
              </div>
            </div>
          </div>
        </div>
      </div>
      
      
      
      

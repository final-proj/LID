<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<div class="timeline-cover">

          <!--Timeline Menu for Large Screens-->
          <div class="timeline-nav-bar hidden-sm hidden-xs">
            <div class="row">
              <div class="col-md-3">
                <div class="profile-info">
                  <img src="${path}/resources/images/test.png" alt="" class="img-responsive profile-photo" />
                  <h3>Sarah Cruiz</h3>
                  <p class="text-muted">나와의 거리 17km</p>
                </div>
              </div>
              <div class="col-md-9">
                <ul class="list-inline profile-menu">
                  <li><a href="${path}/friendpage/goFriendAbout.do?Mno=${param.Mno}" class="${param.about}">About</a></li>
                  <li><a href="${path}/friendpage/goFriendTimeline.do?Mno=${param.Mno}" class="${param.timeline}">Timeline</a></li>
                  <li><a href="${path}/friendpage/goFriendAlbum.do?Mno=${param.Mno}" class="${param.album}">Album</a></li>
                </ul>
                <ul class="follow-me list-inline">
                  <li>1,299 people following her</li>
                  <li><button class="btn-primary">팔로잉</button></li>
                </ul>
              </div>
            </div>
          </div><!--Timeline Menu for Large Screens End-->

          <!--Timeline Menu for Small Screens-->
          <div class="navbar-mobile hidden-lg hidden-md">
            <div class="profile-info">
              <img src="${path}/resources/images/test.png" alt="" class="img-responsive profile-photo" />
              <h4>Sarah Cruiz</h4>
              <p class="text-muted">Creative Director</p>
            </div>
            <div class="mobile-menu">
              <ul class="list-inline">
                  <li><a href="${path}/friend/goFriendAbout.do" class="${param.about}">About</a></li>
                  <li><a href="${path}/friend/goFriendTimeline.do" class="${param.timeline}">Timeline</a></li>
                  <li><a href="${path}/friend/goFriendAlbum.do" class="${param.album}">Album</a></li>
              </ul>
              <button class="btn-primary">Add Friend</button>
            </div>
          </div><!--Timeline Menu for Small Screens End-->

        </div>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>항공권 예약 - 항공편 선택</title>
        <link rel="stylesheet" href="../../../CSS/booking.css">
        <!-- Font Awesome CDN -->
        <script src="https://kit.fontawesome.com/9c923ac74a.js" crossorigin="anonymous"></script>
        <script>window.onbeforeunload=() => window.scrollTo(0, 0)</script>
    </head>
    <body>
    <%@ include file="../../common/nav.jspf" %>
        <div class="overlay"></div>
        
        <div class="cur-route itinerary sticky">
            <div class="row clearfix book-input-form">
                <div class="col-fourth itinerary-select">
                    <label for="airportFrom-1">
                        <i class="fas fa-map-marker-alt"></i>
                        출발지
                    </label>
                    <input type="text" id="airportFrom-1" name="airportFrom-1" class="open-airport-picker" value="다구간" readonly>
                </div>
                <div class="col-fourth itinerary-select">
                    <label for="airportTo-1">
                        <i class="fas fa-map-marker-alt"></i>
                        도착지
                    </label>
                    <input type="text" id="airportTo-1" name="airportTo-1" class="open-airport-picker" value="다구간" readonly>
                </div>
                <div class="col-fourth itinerary-select">
                    <label for="flightDate-1">
                        <i class="far fa-calendar-alt"></i>
                        탑승일
                    </label>
                    <input type="text" id="flightDate-1" name="flightDate-1" class="flightDate" value="다구간" readonly>
                </div>
                <div class="col-fourth itinerary-select">
                    <label for="num-of-passengers">
                        <i class="fas fa-user"></i>
                        탑승객
                    </label>
                    <input type="text" id="num-of-passengers" name="num-of-passengers" readonly>
                </div>
                <i class="fas fa-redo-alt"></i>
            </div>
            <div class="row clearfix book-input-form">
                <div class="col-fourth itinerary-select">
                    <label for="airportFrom-1">
                        <i class="fas fa-map-marker-alt"></i>
                        출발지
                    </label>
                    <input type="text" id="airportFrom-1" name="airportFrom-1" class="open-airport-picker" value="다구간" readonly>
                </div>
                <div class="col-fourth itinerary-select">
                    <label for="airportTo-1">
                        <i class="fas fa-map-marker-alt"></i>
                        도착지
                    </label>
                    <input type="text" id="airportTo-1" name="airportTo-1" class="open-airport-picker" value="다구간" readonly>
                </div>
                <div class="col-fourth itinerary-select">
                    <label for="flightDate-1">
                        <i class="far fa-calendar-alt"></i>
                        탑승일
                    </label>
                    <input type="text" id="flightDate-1" name="flightDate-1" class="flightDate" value="다구간" readonly>
                </div>
                <div class="col-fourth itinerary-select">
                    <label for="num-of-passengers">
                        <i class="fas fa-user"></i>
                        탑승객
                    </label>
                    <input type="text" id="num-of-passengers" name="num-of-passengers" readonly>
                </div>
            </div>
            <div class="row clearfix book-input-form">
                <div class="col-fourth itinerary-select">
                    <label for="airportFrom-1">
                        <i class="fas fa-map-marker-alt"></i>
                        출발지
                    </label>
                    <input type="text" id="airportFrom-1" name="airportFrom-1" class="open-airport-picker" value="다구간" readonly>
                </div>
                <div class="col-fourth itinerary-select">
                    <label for="airportTo-1">
                        <i class="fas fa-map-marker-alt"></i>
                        도착지
                    </label>
                    <input type="text" id="airportTo-1" name="airportTo-1" class="open-airport-picker" value="다구간" readonly>
                </div>
                <div class="col-fourth itinerary-select">
                    <label for="flightDate-1">
                        <i class="far fa-calendar-alt"></i>
                        탑승일
                    </label>
                    <input type="text" id="flightDate-1" name="flightDate-1" class="flightDate" value="다구간" readonly>
                </div>
                <div class="col-fourth itinerary-select">
                    <label for="num-of-passengers">
                        <i class="fas fa-user"></i>
                        탑승객
                    </label>
                    <input type="text" id="num-of-passengers" name="num-of-passengers" readonly>
                </div>
            </div>
            <div class="row clearfix book-input-form">
                <div class="col-fourth itinerary-select">
                    <label for="airportFrom-1">
                        <i class="fas fa-map-marker-alt"></i>
                        출발지
                    </label>
                    <input type="text" id="airportFrom-1" name="airportFrom-1" class="open-airport-picker" value="다구간" readonly>
                </div>
                <div class="col-fourth itinerary-select">
                    <label for="airportTo-1">
                        <i class="fas fa-map-marker-alt"></i>
                        도착지
                    </label>
                    <input type="text" id="airportTo-1" name="airportTo-1" class="open-airport-picker" value="다구간" readonly>
                </div>
                <div class="col-fourth itinerary-select">
                    <label for="flightDate-1">
                        <i class="far fa-calendar-alt"></i>
                        탑승일
                    </label>
                    <input type="text" id="flightDate-1" name="flightDate-1" class="flightDate" value="다구간" readonly>
                </div>
                <div class="col-fourth itinerary-select">
                    <label for="num-of-passengers">
                        <i class="fas fa-user"></i>
                        탑승객
                    </label>
                    <input type="text" id="num-of-passengers" name="num-of-passengers" readonly>
                </div>
            </div>
            <div class="row clearfix book-input-form">
                <div class="col-fourth itinerary-select">
                    <label for="airportFrom-1">
                        <i class="fas fa-map-marker-alt"></i>
                        출발지
                    </label>
                    <input type="text" id="airportFrom-1" name="airportFrom-1" class="open-airport-picker" value="다구간" readonly>
                </div>
                <div class="col-fourth itinerary-select">
                    <label for="airportTo-1">
                        <i class="fas fa-map-marker-alt"></i>
                        도착지
                    </label>
                    <input type="text" id="airportTo-1" name="airportTo-1" class="open-airport-picker" value="다구간" readonly>
                </div>
                <div class="col-fourth itinerary-select">
                    <label for="flightDate-1">
                        <i class="far fa-calendar-alt"></i>
                        탑승일
                    </label>
                    <input type="text" id="flightDate-1" name="flightDate-1" class="flightDate" value="다구간" readonly>
                </div>
                <div class="col-fourth itinerary-select">
                    <label for="num-of-passengers">
                        <i class="fas fa-user"></i>
                        탑승객
                    </label>
                    <input type="text" id="num-of-passengers" name="num-of-passengers" readonly>
                </div>
            </div>
            <div class="row clearfix book-input-form">
                <div class="col-fourth itinerary-select">
                    <label for="airportFrom-1">
                        <i class="fas fa-map-marker-alt"></i>
                        출발지
                    </label>
                    <input type="text" id="airportFrom-1" name="airportFrom-1" class="open-airport-picker" value="다구간" readonly>
                </div>
                <div class="col-fourth itinerary-select">
                    <label for="airportTo-1">
                        <i class="fas fa-map-marker-alt"></i>
                        도착지
                    </label>
                    <input type="text" id="airportTo-1" name="airportTo-1" class="open-airport-picker" value="다구간" readonly>
                </div>
                <div class="col-fourth itinerary-select">
                    <label for="flightDate-1">
                        <i class="far fa-calendar-alt"></i>
                        탑승일
                    </label>
                    <input type="text" id="flightDate-1" name="flightDate-1" class="flightDate" value="다구간" readonly>
                </div>
                <div class="col-fourth itinerary-select">
                    <label for="num-of-passengers">
                        <i class="fas fa-user"></i>
                        탑승객
                    </label>
                    <input type="text" id="num-of-passengers" name="num-of-passengers" readonly>
                </div>
            </div>
            <input type="radio" name="trip-type" id="trip-type" class="hidden" checked>
        </div>
        <style>
            .cur-route { overflow: hidden; }
            .cur-route:hover>div:first-of-type { display: none; }
            .cur-route:hover { height: fit-content; }
            .cur-route>div:not(:first-of-type) {
                margin-top: 15px;
                padding-right: 52px;
            }
        </style>
        <section class="content">
            <div id="journey-1" class="journey-wrapper clearfix">
                <div class="journey-name-fixed hidden" name="journey-1">
                    <div class="row">
                        <i class="fas fa-plane-departure font-blue4"></i>
                        <span class="font-blue4">가는 여정</span>
                        <span id="airportFrom-name-sticky-mini-1">
                            GMP <span>서울 / 김포</span>
                        </span>
                        <span id="airportTo-name-sticky-mini-1">
                            CJU <span>제주</span>
                        </span>
                    </div>
                </div>
                
                <div class="journey-name">
                    <i class="fas fa-plane-departure font-blue4"></i>
                    <span class="font-blue4">가는 여정</span>
                    <br>
                    <div>
                        <span id="airportFrom-name-1">
                            GMP <span>서울 / 김포</span>
                        </span>
                        <span id="airportTo-name-1">
                            CJU <span>제주</span>
                        </span>
                    </div>
                </div>
                <div class="price-compare clearfix">
                    <div class="buttons btn-price-last-week"></div>
                    <div class="price-of-day">
                        <input type="radio" name="price-of-day-1" id="journey-1-price-1">
                        <label for="journey-1-price-1">
                            <div class="date">09.20 (금)</div>
                            <div class="price"><span>KRW</span> 105,500</div>
                        </label>
                    </div>
                    <div class="price-of-day">
                        <input type="radio" name="price-of-day-1" id="journey-1-price-2">
                        <label for="journey-1-price-2">
                            <div class="date">09.21 (토)</div>
                            <div class="price"><span>KRW</span> 65,500</div>
                        </label>
                    </div>
                    <div class="price-of-day">
                        <input type="radio" name="price-of-day-1" id="journey-1-price-3">
                        <label for="journey-1-price-3">
                            <div class="date">09.22 (일)</div>
                            <div class="price"><span>KRW</span> 65,500</div>
                        </label>
                    </div>
                    <div class="price-of-day">
                        <input type="radio" name="price-of-day-1" id="journey-1-price-4" checked>
                        <label for="journey-1-price-4">
                            <div class="date">09.23 (월)</div>
                            <div class="price"><span>KRW</span> 45,500</div>
                        </label>
                    </div>
                    <div class="price-of-day">
                        <input type="radio" name="price-of-day-1" id="journey-1-price-5">
                        <label for="journey-1-price-5">
                            <div class="date">09.24 (화)</div>
                            <div class="price"><span>KRW</span> 65,500</div>
                        </label>
                    </div>
                    <div class="price-of-day">
                        <input type="radio" name="price-of-day-1" id="journey-1-price-6">
                        <label for="journey-1-price-6">
                            <div class="date">09.25 (수)</div>
                            <div class="price"><span>KRW</span> 45,500</div>
                        </label>
                    </div>
                    <div class="price-of-day">
                        <input type="radio" name="price-of-day-1" id="journey-1-price-7">
                        <label for="journey-1-price-7">
                            <div class="date">09.26 (목)</div>
                            <div class="price"><span>KRW</span> 105,500</div>
                        </label>
                    </div>
                    <div class="buttons btn-price-next-week"></div>
                </div>

                <div class="row sort-div clearfix">
                    <ul>
                        <li>
                            <input type="radio" id="sort-by-departure-time-1" name="sort-by-1" checked>
                            <label for="sort-by-departure-time-1">
                                출발시간순
                            </label>
                        </li>
                        <li><input type="radio" id="sort-by-arrival-time-1" name="sort-by-1">
                            <label for="sort-by-arrival-time-1">
                                도착시간순
                            </label>
                        </li>
                        <li>
                            <input type="radio" id="sort-by-flight-time-1" name="sort-by-1">
                            <label for="sort-by-flight-time-1">
                                비행시간순
                            </label>
                        </li>
                        <li>
                            <input type="radio" id="sort-by-price-1" name="sort-by-1">
                            <label for="sort-by-price-1">
                                요금낮은순
                            </label>
                        </li>
                    </ul>
                </div>

                <div class="ticket-table-wrapper scrollable">
                    <div class="row flight-table-title clearfix">
                        <div class="col-two-fifth">
                            <div class="col-four-fifth">
                                출도착시간 (비행시간)
                            </div>
                            <div class="col-fifth">
                                편명/기종
                            </div>
                        </div>
                        <div class="col-fifth">특가운임</div>
                        <div class="col-fifth">할인운임</div>
                        <div class="col-fifth">정상운임</div>
                    </div>
                    
                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-1-1">
                            <label for="journey-1-ticket-row-1-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-1-2">
                            <label for="journey-1-ticket-row-1-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket clearfix" id="journey-1-ticket-row-1-3">
                            <label for="journey-1-ticket-row-1-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>

                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-2-1">
                            <label for="journey-1-ticket-row-2-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-2-2">
                            <label for="journey-1-ticket-row-2-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-2-3">
                            <label for="journey-1-ticket-row-2-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>

                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-3-1">
                            <label for="journey-1-ticket-row-3-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-3-2">
                            <label for="journey-1-ticket-row-3-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-3-3">
                            <label for="journey-1-ticket-row-3-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>

                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-4-1">
                            <label for="journey-1-ticket-row-4-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-4-2">
                            <label for="journey-1-ticket-row-4-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-4-3">
                            <label for="journey-1-ticket-row-4-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>

                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-5-1">
                            <label for="journey-1-ticket-row-5-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-5-2">
                            <label for="journey-1-ticket-row-5-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-5-3">
                            <label for="journey-1-ticket-row-5-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>

                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-6-1">
                            <label for="journey-1-ticket-row-6-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-6-2">
                            <label for="journey-1-ticket-row-6-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-6-3">
                            <label for="journey-1-ticket-row-6-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>
                    
                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-7-1">
                            <label for="journey-1-ticket-row-7-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span><br>
                                <span class="empty-seats">4석</span>
                            </div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-7-2">
                            <label for="journey-1-ticket-row-7-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-7-3">
                            <label for="journey-1-ticket-row-7-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>
                    
                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-8-1">
                            <label for="journey-1-ticket-row-8-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span><br>
                                <span class="empty-seats">4석</span>
                            </div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-8-2">
                            <label for="journey-1-ticket-row-8-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-8-3">
                            <label for="journey-1-ticket-row-8-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>
                    
                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-9-1">
                            <label for="journey-1-ticket-row-9-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-9-2">
                            <label for="journey-1-ticket-row-9-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-9-3">
                            <label for="journey-1-ticket-row-9-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>
                    
                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-10-1">
                            <label for="journey-1-ticket-row-10-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-10-2">
                            <label for="journey-1-ticket-row-10-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-1-ticket-row-10-3">
                            <label for="journey-1-ticket-row-10-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div id="journey-2" class="journey-wrapper">
                <div class="journey-name-fixed hidden" name="journey-2">
                    <i class="fas fa-plane-departure font-blue4"></i>
                    <span class="font-blue4">오는 여정</span>
                    <span id="airportFrom-name-sticky-2">
                        CJU <span>제주</span>
                    </span>
                    <span id="airportTo-name-sticky-2">
                        GMP <span>서울 / 김포</span>
                    </span>
                </div>

                <div class="journey-name">
                    <i class="fas fa-plane-departure font-blue4"></i>
                    <span class="font-blue4">오는 여정</span>
                    <br>
                    <div>
                        <span id="airportFrom-name-2">
                            CJU <span>제주</span>
                        </span>
                        <span id="airportTo-name-2">
                            GMP <span>서울 / 김포</span>
                        </span>
                    </div>
                </div>
                <div class="price-compare clearfix">
                    <div class="buttons btn-price-last-week"></div>
                    <div class="price-of-day">
                        <input type="radio" name="price-of-day-2" id="journey-2-price-1">
                        <label for="journey-2-price-1">
                            <div class="date">09.20 (금)</div>
                            <div class="price"><span>KRW</span> 105,500</div>
                        </label>
                    </div>
                    <div class="price-of-day">
                        <input type="radio" name="price-of-day-2" id="journey-2-price-2">
                        <label for="journey-2-price-2">
                            <div class="date">09.21 (토)</div>
                            <div class="price"><span>KRW</span> 65,500</div>
                        </label>
                    </div>
                    <div class="price-of-day">
                        <input type="radio" name="price-of-day-2" id="journey-2-price-3">
                        <label for="journey-2-price-3">
                            <div class="date">09.22 (일)</div>
                            <div class="price"><span>KRW</span> 65,500</div>
                        </label>
                    </div>
                    <div class="price-of-day">
                        <input type="radio" name="price-of-day-2" id="journey-2-price-4">
                        <label for="journey-2-price-4">
                            <div class="date">09.23 (월)</div>
                            <div class="price"><span>KRW</span> 45,500</div>
                        </label>
                    </div>
                    <div class="price-of-day">
                        <input type="radio" name="price-of-day-2" id="journey-2-price-5">
                        <label for="journey-2-price-5">
                            <div class="date">09.24 (화)</div>
                            <div class="price"><span>KRW</span> 65,500</div>
                        </label>
                    </div>
                    <div class="price-of-day">
                        <input type="radio" name="price-of-day-2" id="journey-2-price-6">
                        <label for="journey-2-price-6">
                            <div class="date">09.25 (수)</div>
                            <div class="price"><span>KRW</span> 45,500</div>
                        </label>
                    </div>
                    <div class="price-of-day">
                        <input type="radio" name="price-of-day-2" id="journey-2-price-7">
                        <label for="journey-2-price-7">
                            <div class="date">09.26 (목)</div>
                            <div class="price"><span>KRW</span> 105,500</div>
                        </label>
                    </div>
                    <div class="buttons btn-price-next-week"></div>
                </div>

                <div class="row sort-div clearfix">
                    <ul>
                        <li>
                            <input type="radio" id="sort-by-departure-time-2" name="sort-by-2" checked>
                            <label for="sort-by-departure-time-2">
                                출발시간순
                            </label>
                        </li>
                        <li><input type="radio" id="sort-by-arrival-time-2" name="sort-by-2">
                            <label for="sort-by-arrival-time-2">
                                도착시간순
                            </label>
                        </li>
                        <li>
                            <input type="radio" id="sort-by-flight-time-2" name="sort-by-2">
                            <label for="sort-by-flight-time-2">
                                비행시간순
                            </label>
                        </li>
                        <li>
                            <input type="radio" id="sort-by-price-2" name="sort-by-2">
                            <label for="sort-by-price-2">
                                요금낮은순
                            </label>
                        </li>
                    </ul>
                </div>

                <div class="ticket-table-wrapper scrollable">
                    <div class="row flight-table-title clearfix">
                        <div class="col-two-fifth">
                            <div class="col-four-fifth">
                                출도착시간 (비행시간)
                            </div>
                            <div class="col-fifth">
                                편명/기종
                            </div>
                        </div>
                        <div class="col-fifth">특가운임</div>
                        <div class="col-fifth">할인운임</div>
                        <div class="col-fifth">정상운임</div>
                    </div>

                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-1-1">
                            <label for="journey-2-ticket-row-1-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-1-2">
                            <label for="journey-2-ticket-row-1-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket clearfix" id="journey-2-ticket-row-1-3">
                            <label for="journey-2-ticket-row-1-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>

                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-2-1">
                            <label for="journey-2-ticket-row-2-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-2-2">
                            <label for="journey-2-ticket-row-2-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-2-3">
                            <label for="journey-2-ticket-row-2-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>

                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-3-1">
                            <label for="journey-2-ticket-row-3-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-3-2">
                            <label for="journey-2-ticket-row-3-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-3-3">
                            <label for="journey-2-ticket-row-3-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>

                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-4-1">
                            <label for="journey-2-ticket-row-4-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-4-2">
                            <label for="journey-2-ticket-row-4-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-4-3">
                            <label for="journey-2-ticket-row-4-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>

                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-5-1">
                            <label for="journey-2-ticket-row-5-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-5-2">
                            <label for="journey-2-ticket-row-5-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-5-3">
                            <label for="journey-2-ticket-row-5-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>

                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-6-1">
                            <label for="journey-2-ticket-row-6-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-6-2">
                            <label for="journey-2-ticket-row-6-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-6-3">
                            <label for="journey-2-ticket-row-6-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>

                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-7-1">
                            <label for="journey-2-ticket-row-7-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span><br>
                                <span class="empty-seats">4석</span>
                            </div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-7-2">
                            <label for="journey-2-ticket-row-7-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-7-3">
                            <label for="journey-2-ticket-row-7-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>

                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-8-1">
                            <label for="journey-2-ticket-row-8-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span><br>
                                <span class="empty-seats">4석</span>
                            </div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-8-2">
                            <label for="journey-2-ticket-row-8-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-8-3">
                            <label for="journey-2-ticket-row-8-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>

                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-9-1">
                            <label for="journey-2-ticket-row-9-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-9-2">
                            <label for="journey-2-ticket-row-9-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-9-3">
                            <label for="journey-2-ticket-row-9-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>

                    <div class="row flight-table-schedule clearfix">
                        <div class="col-two-fifth">
                            <div class="col-fifth">06:05</div>
                            <div class="col-two-fifth">
                                <div class="flight-detail"><i class="far fa-clock"></i>1시간 10분</div>
                                <div class="flight-detail">직항</div>
                            </div>
                            <div class="col-fifth">07:15</div>
                            <div class="col-fifth">OZ8901</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-10-1">
                            <label for="journey-2-ticket-row-10-1"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">36,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-10-2">
                            <label for="journey-2-ticket-row-10-2"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">54,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                        <div class="col-fifth">
                            <input type="radio" name="flight-ticket" class="radio3 special-price-ticket" id="journey-2-ticket-row-10-3">
                            <label for="journey-2-ticket-row-10-3"></label>
                            <div>
                                <span class="currency">KRW</span>
                                <span class="price">98,500</span>
                            </div>
                            <div class="empty-seats">9석</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="flex">
                <a href="booking1.html"><button class="whiteBtn left">&lt; 이전</button></a>
                <a href="booking3.html"><button class="right blueBtn">다음 &gt;</button></a>
            </div>
            
            <ul class="list-type2 bg-gray6 last-note">
                <li class="list-inside-title">유의사항</li>
                <li>2019-10-07 (한국시간) 기준, 유류할증료와 세금 및 제반요금 포함된 성인 1인 운임이며, 운임은 수시로 변경될 수 있습니다.</li>
                <li>고객님의 예약 시간은 정기 스케쥴 변경, 정기 정비 작업 등으로 인하여 전 노선에 시간 변동 및 운항/비운항이 예고 없이 발생할 수 있음을 양지하여 주시기 바랍니다.</li>
                <li>예약 가능석은 실시간으로 변동되며, 탑승자 정보 입력 단계를 완료해야 좌석이 확약됩니다.</li>
                <li>항공권 구매 전 공동 운항에 대한 안내 사항을 확인하시기 바랍니다.</li>
                <li>항공권 운임에 따라 운임 규정이 상이하므로 반드시 운임 규정을 확인하시고 구매하시기 바랍니다.</li>
                <li>각 운임의 표기된 할인율은 고시 편의상 소수점 이하 반올림한 값임을 알려드립니다.</li>
            </ul>
    
    
    
            <!--탑승객 팝업-->
            <div class="pop-up-window-type1" id="num-of-passengers-window">
                <div class="itinerary">
                    <div class="row">
                        <p class="window-title">
                            탑승객 선택
                            <i class="fas fa-times btn-close"></i>
                        </p>
                    </div>
                    <br>
                    <div class="row clearfix book-input-form2">
                        <div class="col-third passenger-select number-box">
                            <p>성인 <span>(만 13세 이상)</span></p>
                            <button class="minus">-</button>

                            <input type="number" value="1" id="numOfAdult">
                            <button class="plus">+</button>
                        </div>
                        <div class="col-third passenger-select number-box">
                            <p>소아 <span>(만 2세 ~ 13세 미만)</span></p>
                            <button class="minus">-</button>
                            <input type="number" value="0" id="numOfChild">
                            <button class="plus">+</button>
                        </div>
                        <div class="col-third passenger-select number-box">
                            <p>유아 <span>(만 2세 미만)</span></p>
                            <button class="minus">-</button>
                            <input type="number" value="0" id="numOfInfant">
                            <button class="plus">+</button>
                        </div>
                    </div>
                    <div class="clearfix" id="ageCalc-btn-box">
                        <button id="btn-ageCalc">
                            나이 계산기
                            <i class="far fa-window-restore"></i>
                        </button>
                    </div>
                    <div class="row clearfix">
                        <ul class="list-type2">
                            <br>
                            <li class="passengerInfo">예약인원은 성인,소아, 유아를 포함하여 총 9명까지 선택 가능합니다.</li>
                            <li>전 구간에 소아와 함께 여행하는 동반 성인이 있을 경우, 소아 단독 항공권 구매가 가능합니다.</li>
                            <li>유아는 탑승일 기준 만 2세 미만까지이며, 좌석을 점유하지 않습니다.</li>
                        </ul>
                    </div>
                </div>
                
                <div class="btn-area">
                    <button class="blueBtn" id="selectBtn">선택</button>
                </div>
            </div>
    
            <!--나이계산기 팝업-->
            <div class="pop-up-window-type1 centeredX" id="btn-ageCalc-window">
                <div>
                    <p class="window-title">
                        나이계산기
                        <i class="fas fa-times btn-close"></i>
                    </p>
                </div>
                <p>계산하고자 하는 어린이의 생년월일을 선택하시면, 유아/소아 유무를 확인하실 수
                    있습니다.</p>
                <div class="form-area1">
                    <input type="number" id="txtBirthDate" placeholder="생년월일 8자리 입력 (예시:19700131)" maxlength="8" oninput="maxLengthCheck(this)">
                    <button class="blueBtn" id="btn-ageCalc-calc">계산하기</button>
                </div>
                <div id="ageCalc-result" class="font-red"></div>
            </div>
        </section>
        
        <!--datepicker용-->
        <!-- Bootstrap JS -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://code.jquery.com/jquery-migrate-3.0.0.min.js"></script>
        <!-- Moment Js -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>

        <!-- Lightpick CSS -->
        <link rel="stylesheet" href="../../../../Vendor/javascript-datepicker-lightpick/css/lightpick.css">

        <!-- Lightpick JS -->
        <script src="../../../../Vendor/javascript-datepicker-lightpick/js/lightpick.js"></script>
        <script src="../../../../Vendor/waypoints/jquery.waypoints.min.js"></script>
        <%@ include file="../../common/footer.jspf" %>
        <script src="../../../JS/airportpicker.js"></script>
        <script src="../../../JS/booking.js"></script>
    </body>
</html>
package com.flowers.web.flower.controller;


public class test {
    public void test() {
//        try {
//            long systemId = 0;
//            int year = 0;
//            int month = 0;
//            if (systemId == 0 || year == 0 || month == 0) return ;
//            List<Meeting> meetings = chartService.selectAll();
//            Map<Object, Map<Object, List<Object>>> dates = new HashMap<>();
//            for (Meeting meeting : meetings) {
//                Map<Object, List<Object>> ids = new HashMap<>();
//                List<Object> list = null;
//                if (dates.containsKey(meeting.getEndTime())) {
//                    list = ids.get(meeting.getEndTime());
//                    if (!list.contains(meeting)) {
//                        list.add(meeting);
//                    }
//                } else {
//                    list = new ArrayList<>();
//                    list.add(meeting);
//                    ids.put("id", list);
//                }
//                dates.put("map2", ids);
//            }



//            List<Map<String, String>> timeLineObj1 = new ArrayList<>();
//            for (Meeting meeting : meetings) {
//                if (map.containsKey(meeting.meeting_address_id())) {
//                    String start = map.get(meeting.meeting_address_id()) + " 00:00:01";
//                    String end = map.get(meeting.meeting_address_id()) + " 23:59:59";
////                    if (meeting.getEndTime() < end && meeting.getStartTime() > start) {
//                    if (1 < 2 && 3 > 1) {
//                        timeLineObj1.add(setMap1(meeting));
//                    }
//                }
//            }




//                if (meetingAddressList != null) {
//                for (MeetingAddress meetingAddress : meetingAddressList) {
//                    List<Map<String, String>> dayObj = new ArrayList<>();
//                    if (dayList != null) {
//                        for (String day : dayList) {
//                            List<Meeting> meetingList = chartService.getMeetingListByMeetingAddressAndDate(meetingAddress.getId(), day);
//                            List<Map<String, String>> timeLineObj = new ArrayList<>();
//                            if (meetingList != null) {
//                                for (Meeting meeting : meetingList) {
//                                    timeLineObj.add(setMap1(meeting));
//                                }
//                            }
//                            dayObj.add(setMap2(day, timeLineObj));
//                        }
//                    }
//                    meetingAddress.setTimeLine(dayObj);
//                }
//            }
//        } catch (Exception be) {
//        }
    }

//    private Map setMap1(Meeting meeting) {
//        Date startTime = meeting.getPreTime();
//        if (startTime == null) startTime = meeting.getStartTime();
//        Map map_meeting = new HashMap();
//        map_meeting.put("flag", meeting.getFlag());
//        map_meeting.put("meetingId", meeting.getId());
//        map_meeting.put("meetingName", meeting.getName());
//        map_meeting.put("startTime", meeting.getStartTime());
//        map_meeting.put("endTime", meeting.getEndTime());
//        map_meeting.put("dayNum", startTime);
//        return map_meeting;
//    }
//
//    private Map setMap2(String day, List<Map<String, String>> timeLineObj) {
//        Map map_day = new HashMap<>();
//        map_day.put("day", day);
//        map_day.put("meetingData", timeLineObj);
//        return map_day;
//    }

//
//    public static void main(String[] args) {
//        try{
//            long systemId =request.getSystemId();
//            int year =request.getYear();
//            int month =request.getMonth();
//            if (systemId == 0 || year == 0 || month == 0) {
//                return ResultGenerator.FailResult("参数错误");
//            }
//            List<String> dayList =DateUtil.getMonthFullDay(year,month); //当月所有日期list [2018-11-01,2018-11-02,....2018-11-30]
//            List<MeetingAddress> meetingAddressList = meetingService.meetingAddressList(systemId); //会议室List
//            if(meetingAddressList!=null && meetingAddressList.size()>0) {
//                for (MeetingAddress meetingAddress:meetingAddressList) {
//                    List<Map<String,String>> dayObj =new ArrayList<>(); //用于装载日期对象
//                    if(dayList!=null && dayList.size()>0) {
//                        for (String day : dayList) {
//                            List<Meeting> meetingList = chartService.getMeetingListByMeetingAddressAndDate(meetingAddress.getId(), day);
//                            List<Map<String, String>> timeLineObj = new ArrayList<>(); //用于装载会议档期对象
//                            if (meetingList != null && meetingList.size() > 0) {
//                                for (Meeting meeting : meetingList) {
//                                    Date startTime = meeting.getPreTime();  //定义开始时间为搭建时间
//                                    if (startTime == null) {  //如果搭建时间为空
//                                        startTime = meeting.getStartTime();
//                                    }
//                                    int diffdays = DateUtil.differentDays(startTime, meeting.getEndTime());
//                                    Map map_meeting = new HashMap();
//                                    map_meeting.put("flag", meeting.getFlag());  //1 会议 2预约
//                                    map_meeting.put("meetingId", meeting.getId());
//                                    map_meeting.put("meetingName", meeting.getName());
//                                    map_meeting.put("startTime", meeting.getStartTime());
//                                    map_meeting.put("endTime", meeting.getEndTime());
//                                    map_meeting.put("dayNum", diffdays + 1);   //会议天数
//                                    timeLineObj.add(map_meeting); //循环装载当天的会议档期list
//                                }
//                            }
//                            Map map_day = new HashMap<>();
//                            map_day.put("day", day);
//                            map_day.put("meetingData", timeLineObj);
//                            dayObj.add(map_day); //循环装载当月每一天的档期list
//                        }
//                    }
//                    meetingAddress.setTimeLine(dayObj); //会议室冗余当月所有档期信息
//                }
//            }
//            return ResultGenerator.SuccessResult(meetingAddressList);
//        }catch (BizException be){
//            return ResultGenerator.FailResult();
//        }
//    }
}

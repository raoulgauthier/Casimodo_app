/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

console.log('Hello World from Webpacker')
import {fullcalendar} from 'fullcalendar-scheduler';
import $ from 'jquery';

$(function() {

  // page is now ready, initialize the calendar...

  $('#calendar').fullCalendar({
    // put your options and callbacks here
     defaultView: 'timelineDay',
    schedulerLicenseKey: 'CC-Attribution-NonCommercial-NoDerivatives',
    height: 650,
    contentHeight: 600,
    resources: '/workorders/tech_list',
    events: '/workorders/event_list',
    eventColor: '#4d82ba',

    header: {
    center: 'timelineDay,agendaFourDay,month,list' // buttons for switching between views
  },
  views: {
    agendaFourDay: {
      type: 'agenda',
      duration: { days: 7 },
      buttonText: 'week'
    }
  }

  })

});

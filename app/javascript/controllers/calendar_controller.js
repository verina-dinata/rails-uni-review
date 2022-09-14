import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="calendar"
export default class extends Controller {

  //Create and download a file on click
  download = (fileBody) => {
    let fileName = 'reminder.ics'
    let element = document.createElement('a');
    element.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(fileBody));
    element.setAttribute('download', fileName);

    element.style.display = 'none';
    document.body.appendChild(element);

    element.click();

    document.body.removeChild(element);
  }

  convertDate = (date) => {
    let event = new Date(date).toISOString();
    event = event.split("T")[0];
    event = event.split("-");
    event = event.join("");
    return event;
  }

  createInvite = (event) => {

    let nameValue = event.target.getAttribute('name-value');
    let deadlineValue = event.target.getAttribute('deadline-value');
    let addressValue = event.target.getAttribute('address-value');

    let convertedDate = this.convertDate(deadlineValue);

    const icsBody = 'BEGIN:VCALENDAR\r\n' +
    'VERSION:2.0\r\n' +
    'PRODID:-//Team Uni-Review//EN\r\n' +
    'BEGIN:VEVENT\r\n' +
    'SUMMARY:' + 'Application Deadline for ' + nameValue + '\r\n' +
    'UID:@Default\r\n' +
    'STATUS:CONFIRMED\r\n' +
    'DTSTART;VALUE=DATE:' + convertedDate + '\r\n' +
    'LOCATION:' + nameValue + '\n' + addressValue + '\r\n' +
    'DESCRIPTION:' + 'This is a calendar reminder for the upcoming Enrollment Deadline for ' + nameValue + '.\r\n' +
    'END:VEVENT\r\n' +
    'END:VCALENDAR\r\n';

    this.download(icsBody);
  }
}

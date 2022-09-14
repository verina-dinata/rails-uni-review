import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="calendar"
export default class extends Controller {

  //Create and download a file on click
  download = (filename, fileBody) => {
    let element = document.createElement('a');
    element.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(fileBody));
    element.setAttribute('download', filename);

    element.style.display = 'none';
    document.body.appendChild(element);

    element.click();

    document.body.removeChild(element);
  }

  /**
  * Returns a date/time in ICS format
  */
  convertToICSDate = (dateTime) => {
    const year = dateTime.getFullYear().toString();
    const month = (dateTime.getMonth() + 1) < 10 ? "0" + (dateTime.getMonth() + 1).toString() : (dateTime.getMonth() + 1).toString();
    const day = dateTime.getDate() < 10 ? "0" + dateTime.getDate().toString() : dateTime.getDate().toString();
    const hours = dateTime.getHours() < 10 ? "0" + dateTime.getHours().toString() : dateTime.getHours().toString();
    const minutes = dateTime.getMinutes() < 10 ? "0" +dateTime.getMinutes().toString() : dateTime.getMinutes().toString();

    return year + month + day + "T" + hours + minutes + "00";
  }

  /**
  * Creates and downloads an ICS file
  * @params {string} timeZone - In the format America/New_York
  * @params {object} startTime - Vaild JS Date object in the event timezone
  * @params {object} endTime - Vaild JS Date object in the event timezone
  * @params {string} title
  * @params {string} description
  * @params {string} venueName
  * @params {string} address
  * @params {string} city
  * @params {string} state
  */
  createInvite = (application_deadline, endTime, title, description, venueName, address, city, state) => {

    // const icsBody = 'BEGIN:VCALENDAR\n' +
    // 'VERSION:2.0\n' +
    // 'PRODID:Calendar\n' +
    // 'CALSCALE:GREGORIAN\n' +
    // 'METHOD:PUBLISH\n' +
    // 'BEGIN:VEVENT\n' +
    // 'SUMMARY:' + 'Campus Tour of ' +  '\n' +
    // 'UID:@Default\n' +
    // 'SEQUENCE:0\n' +
    // 'STATUS:CONFIRMED\n' +
    // 'TRANSP:TRANSPARENT\n' +
    // 'DTSTART:' application_deadline + '\n' +
    // 'DTEND:' (application_deadline + 1) '\n' +
    // 'LOCATION:' + venueName + '\\n' + address + ', ' + city + ', ' + '\n' +
    // 'DESCRIPTION:' + description + '\n' +
    // 'END:VEVENT\n' +
    // 'END:VCALENDAR\n';

    // download('campustour' + '.ics', icsBody);
  }
}

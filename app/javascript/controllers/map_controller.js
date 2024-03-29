import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl' // Don't forget this!



export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {

    mapboxgl.accessToken = this.apiKeyValue
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }

  #addMarkersToMap() {
    console.log(this.markersValue)
    this.markersValue.forEach((marker) => {

      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)
      const customMarker = document.createElement("div")
      customMarker.innerHTML = marker.marker_html

      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.lng, marker.lat ]) //[ 139.6970053, 35.641125 ] is Meguro hard code
        .setPopup(popup)
        .addTo(this.map)
    })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()

    if (this.markersValue){
      this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
      this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
    }
  }
}



//   #addMarkersToMap() {
//   this.markersValue.forEach((marker) => {
//     new mapboxgl.Marker()
//       .setLngLat([ marker.lng, marker.lat ])
//       .addTo(this.map)
//   })
// }

// In example they placed in index page of Flats, therefore there are multiple
// marker(s). In our case, just one @marker?

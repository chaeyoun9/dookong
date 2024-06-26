	
	
	
	
		var map;

        function initMap() {
            const mapOption = {
                center: new kakao.maps.LatLng(33.450701, 126.570667), // 초기 지도의 중심 좌표
                level: 3 // 초기 지도의 확대 레벨
            };

            // 지도를 생성합니다
            map = new kakao.maps.Map(document.getElementById('map'), mapOption);
        }

        function search() {
    var keyword = document.getElementById('searchInput').value;

    if (!keyword) {
        alert("검색어를 입력해주세요.");
        return;
    }

    var geocoder = new kakao.maps.services.Geocoder();

    // 주소로 좌표를 검색합니다
    geocoder.addressSearch(keyword, function(result, status) {
        if (status === kakao.maps.services.Status.OK) {
            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

            // 결과값으로 받은 위치를 마커로 표시합니다
            var marker = new kakao.maps.Marker({
                map: map,
                position: coords
            });

            // 지도 하단에 카카오 길찾기 링크 추가
            var mapContainer = document.getElementById('map');
            var roadviewUrl = 'https://map.kakao.com/?panoid=' + result[0].y + '&pan=327.5&tilt=-3.0&zoom=0';
            var link = document.createElement('a');
            link.href = roadviewUrl;
            link.target = '_blank';
            link.textContent = '길찾기 보기';
            mapContainer.appendChild(link);

            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
            map.setCenter(coords);
        } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
            alert('검색 결과가 없습니다.');
        } else if (status === kakao.maps.services.Status.ERROR) {
            alert('검색 중 오류가 발생했습니다.');
        }
    });
}


        document.addEventListener("DOMContentLoaded", function () {
            initMap();
        });
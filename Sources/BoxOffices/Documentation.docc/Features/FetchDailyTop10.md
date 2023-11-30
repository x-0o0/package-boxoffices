# 박스오피스 상위 10개 목록 가져오기

일일 상위 10개의 박스오피스를 가져오는 기능에 대한 문서입니다.

## 개요

``BoxOffices/fetchDailyTop10()`` 메소드를 통해 ``Movie`` 타입의 영화 객체를 10개 가져올 수 있습니다.
`Result` 타입으로 리턴합니다.

```swift
let result = await BoxOffices.shared.fetchDailyTop10()
switch result {
case .success(let movies):
    // Movie 객체 10개  
case .failure(let error):
    // 에러 처리
}
```

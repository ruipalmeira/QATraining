import http from 'k6/http';
import { check, sleep } from 'k6';

export const options = {
  stages: [
    { duration: '5s', target: 20 },
    { duration: '1m', target: 100 },
    { duration: '30s', target: 50 },
    { duration: '10s', target: 25 },
    { duration: '30s', target: 0 },
  ],
};
//https://httpbin.test.k6.io/
export default function () {
  const res = http.get('https://dev.moviik.com');
  check(res, { 'status was 200': (r) => r.status == 200 });
  sleep(1);
}
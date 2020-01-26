import dbi from './dbi';

const result = dbi.getAsync(
    'select * from lorem where info = ?',
    ['Ipsum 0']
);

result.then((data) => {
    console.log(data);
});

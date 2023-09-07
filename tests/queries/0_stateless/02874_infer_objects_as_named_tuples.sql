set input_format_json_try_infer_named_tuples_from_objects = 1;
desc format(JSONEachRow, '{"obj" : {"a" : 42, "b" : "Hello", "c" : [1,2,3]}}');
select * from format(JSONEachRow, '{"obj" : {"a" : 42, "b" : "Hello", "c" : [1,2,3]}}');
desc format(JSONEachRow, '{"obj" : {"a" : 42, "b" : "Hello", "c" : [1,2,3]}}, {"obj" : {"a" : 43, "b" : "World", "d" : "2020-01-01"}}');
select * from format(JSONEachRow, '{"obj" : {"a" : 42, "b" : "Hello", "c" : [1,2,3]}}, {"obj" : {"a" : 43, "b" : "World", "d" : "2020-01-01"}}');
desc format(JSONEachRow, '{"obj" : {"a" : 42, "b" : "Hello", "c" : [1,2,3]}}, {"obj" : {"a" : 43, "b" : "World", "d" : "2020-01-01"}}, {"obj" : {}}');
select * from format(JSONEachRow, '{"obj" : {"a" : 42, "b" : "Hello", "c" : [1,2,3]}}, {"obj" : {"a" : 43, "b" : "World", "d" : "2020-01-01"}}, {"obj" : {}}');
desc format(JSONEachRow, '{"obj" : {"a" : 42, "b" : "Hello", "c" : [1,2,3]}}, {"obj" : {"a" : 43, "b" : "World", "d" : "2020-01-01"}}, {"obj" : {}}, {"obj" : {"d" : "Hello", "b" : "2020-01-01"}}');
select * from format(JSONEachRow, '{"obj" : {"a" : 42, "b" : "Hello", "c" : [1,2,3]}}, {"obj" : {"a" : 43, "b" : "World", "d" : "2020-01-01"}}, {"obj" : {}}, {"obj" : {"d" : "Hello", "b" : "2020-01-01"}}');
desc format(JSONEachRow, '{"obj" : [{"a" : 42, "b" : "Hello", "c" : [1,2,3]}, {"a" : 43, "b" : "World", "d" : "2020-01-01"}]}, {"obj" : [{}]}');
select * from format(JSONEachRow, '{"obj" : [{"a" : 42, "b" : "Hello", "c" : [1,2,3]}, {"a" : 43, "b" : "World", "d" : "2020-01-01"}]}, {"obj" : [{}]}');
desc format(JSONEachRow, '{"obj" : {"nested_obj" : {"a" : 42, "b" : "Hello", "c" : [1,2,3]}}}, {"obj" : {"nested_obj" : {"a" : 43, "b" : "World", "d" : "2020-01-01"}}}, {"obj" : {"nested_obj" : {}}}');
select * from format(JSONEachRow, '{"obj" : {"nested_obj" : {"a" : 42, "b" : "Hello", "c" : [1,2,3]}}}, {"obj" : {"nested_obj" : {"a" : 43, "b" : "World", "d" : "2020-01-01"}}}, {"obj" : {"nested_obj" : {}}}');


def get_arr_number_in_cube(start, end):
	arr = []
	for i in range(start, end):
		if (i%2 == 1):
			arr.append(i ** 3)
	return arr

start_arr = get_arr_number_in_cube(1, 1001)
arr2 = []
all_7_num = []

def get_sum_number_arr(number):
	get_string_item = str(number)
	get_arr_string = list(get_string_item)
	get_arr_int = list(map(int, get_arr_string))
	return sum(get_arr_int)

def get_divided_by_seven(item):
	if(item % 7 == 0):
		arr2.append(item)

def iterator(arr):
	for item in arr:
		get_divided_by_seven(item)
	for item in arr:
		get_divided_by_seven(get_sum_number_arr(item))

iterator(start_arr)
print(sum(arr2))

start_arr = list(map(lambda x: x+17, start_arr))

iterator(start_arr)
print(sum(arr2))


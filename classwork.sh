def main():
    total_size = int(input("total size of memory : \n"))
    process = int(input("processes : \n"))
    
    process_number = 1
    while process > 0:
        print("Enter Process number", process_number, ":")
        process_number += 1
        current_process_size = int(input())
        if total_size >= current_process_size:
            total_size -= current_process_size
        else:
            print("Size is not available")
        process -= 1
        
    print("Total Internal Fragmentation =", total_size)

if __name__ == "__main__":
    main()

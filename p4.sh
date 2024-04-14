./p4.sh
echo "Date validator"

# Initializing values of date, month, and year
dd=0
mm=0
yy=0

# Initializing no of days in a month
days=0

# Prompting the user for input
read -p "Enter day (dd) : " dd
read -p "Enter Month (mm) : " mm
read -p "Enter Year (yyyy) : " yy

# Checking for invalid month
if [ $mm -le 0 ] || [ $mm -gt 12 ]; then
    echo "$mm is an invalid month."
    exit 1
fi

# Finding out the number of days in a month
case $mm in
    1 | 3 | 5 | 7 | 8 | 10 | 12)
        days=31
        ;;
    4 | 6 | 9 | 11)
        days=30
        ;;
    2)
        # Handling leap year for February
        if [ $((yy % 4)) -eq 0 ] && [ $((yy % 100)) -ne 0 ] || [ $((yy % 400)) -eq 0 ]; then
            days=29
        else
            days=28
        fi
        ;;
    *)
        days=-1
        ;;
esac

# Checking for invalid day
if [ $dd -le 0 ] || [ $dd -gt $days ]; then
    echo "$dd day is invalid."
    exit 3
fi

# No error means date is valid
echo "$dd/$mm/$yy is a Valid Date"

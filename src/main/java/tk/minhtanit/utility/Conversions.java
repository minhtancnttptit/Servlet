package tk.minhtanit.utility;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Conversions {
    private static final String FORMAT_DATE = "dd-MM-yyyy";

    public static String format(Date date) {
        SimpleDateFormat formatter = new SimpleDateFormat(FORMAT_DATE);
        return formatter.format(date);
    }
}

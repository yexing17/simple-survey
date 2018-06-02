package servlet;

import javax.servlet.http.HttpServletRequest;

public class CommonHelper {
    /**
     * <从request对象中获取用户IP地址>
     * @param request
     * @return IP地址
     */
    public static String getIp(HttpServletRequest request) {
        String forwards = request.getHeader("x-forwarded-for");
        if (forwards == null || "unknown".equalsIgnoreCase(forwards)) {
            forwards = request.getHeader("Proxy-Client-IP");
        }
        if (forwards == null || "unknown".equalsIgnoreCase(forwards)) {
            forwards = request.getHeader("WL-Proxy-Client-IP");
        }
        if (forwards == null || "unknown".equalsIgnoreCase(forwards)) {
            forwards = request.getRemoteAddr();
        }
        if (forwards == null || "unknown".equalsIgnoreCase(forwards)) {
            forwards = request.getHeader("X-Real-IP");
        }
        if (forwards != null && forwards.trim().length() > 0) {
            int index = forwards.indexOf(',');
            return (index != -1) ? forwards.substring(0, index) : forwards;
        }
        return forwards;
    }

    /** This class should not be instantiated. */
    private CommonHelper() {
    }
}

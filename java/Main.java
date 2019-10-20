import java.util.*;
import java.io.*;

/**
 * @author nokdoot
 */

public class Main {

    static String line;
    static StringTokenizer st;
    static BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

    public static void main(String[] args) throws IOException {
        Quest();
    }

    public static void Quest() throws IOException {
    }

    public static String NextString() throws IOException {
        return NextToken();
    }

    public static int NextInt() throws IOException {
        return Integer.parseInt(NextToken());
    }

    public static String NextToken() throws IOException {
        if ( st == null || !st.hasMoreTokens() ) {
            line = br.readLine();
            st = new StringTokenizer(line);
        }
        return st.nextToken();
    }
}

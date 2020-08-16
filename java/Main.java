package main;

import java.util.*;
import java.io.*;
import java.util.function.IntFunction;

/**
 * @author nokdoot
 */

public class Main {

    static String line;
    static StringTokenizer st;
    static BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

    public static void main(String[] args) throws IOException {
        }
    }

    public static String ReadString() throws IOException {
        return ReadToken();
    }

    public static int ReadInt() throws IOException {
        return Integer.parseInt(ReadToken());
    }

    public static String ReadToken() throws IOException {
        while ( st == null || !st.hasMoreTokens() ) {
            line = br.readLine();
            st = new StringTokenizer(line);
        }
        return st.nextToken();
    }

    public static int[] MapInt2Int(int[] src, IntFunction<Integer> f) {
        int n = src.length;
        int[] result = new int[n];
        for (int i = 0; i < n; i++) {
            result[i] = f.apply(src[i]);
        }
        return result;
    }
}

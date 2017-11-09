import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Scanner;


public class Main {

	public static void main(String[] args) throws FileNotFoundException {
		if(args.length == 0) {
			System.out.println("Insert a file name.");
			return;
		}
		Scanner sc = new Scanner(new File(args[0]));
		
		StringBuffer sb = new StringBuffer();
		while(sc.hasNextLine()) {
			sb.append(sc.nextLine()+"\n");
			
		}
		PrintWriter pw = new PrintWriter(new File("out.csv"));
		
		String [] parts = sb.toString().split("(?m)^# BB#|(?m)^\\.LBB0_");
//		System.out.println(parts.length);
		//we will leave the first part alone because it is not a BB
		for (int i = 1; i<parts.length; i++ ) {
			
			int indexOfCode = parts[i].indexOf(':');
			int bbNumber = Integer.valueOf(parts[i].substring(0, indexOfCode));
			
			String bbContent = parts[i].substring(indexOfCode+1);
			
			//System.out.println(bbContent);
			String [] bbs = parseBBContent(bbContent);
			
			System.out.println(bbNumber);
			System.out.println(bbs[0]);
			System.out.println("------------------------");
			System.out.println(bbs[1]);
			pw.write("\""+bbNumber+"\",\""+bbs[0]+"\",\""+bbs[1]+"\"\n");
			
			
			System.out.println("#########################");
		}
		pw.flush();
		pw.close();
	}
	
	static String [] parseBBContent(String content) {
		String [] out = new String[2];
		String inst = "", lineInfo = "";
		Scanner sc = new Scanner(content);
		while(sc.hasNextLine()) {
			String line = sc.nextLine().trim();
			if(line.length() == 0 || line.charAt(0) == '#') continue;
			if(line.charAt(0) == '.') {
				String [] infoPart = line.split("#");
				
				if(infoPart.length == 1) continue;
				
				int count = infoPart[1].length() - infoPart[1].replaceAll(":", "").length();
				
				if(count == 2) {
					lineInfo  = lineInfo + infoPart[1].trim()+"\n";
				}
				
				
			} else {
				
				inst = inst + line + "\n";
			}
		}
		inst = inst.replaceAll("", "");
		lineInfo = lineInfo.replaceAll(",", "");
		out[0] = inst;
		out[1] = lineInfo;
		return out;
	} 

}

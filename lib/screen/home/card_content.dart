import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CardContent extends StatelessWidget {
  const CardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("images/avatar_1.png"),
              const SizedBox(
                width: 16,
              ),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Post in",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                      ),
                    ),
                    Text(
                      "Indonesian",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                backgroundColor: const Color(0xFFF4F5F6),
                child: IconButton(
                  iconSize: 24.0,
                  icon: const Icon(
                    Icons.arrow_right_alt,
                    color: Colors.black87,
                  ),
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "Detail",
                        toastLength: Toast.LENGTH_SHORT,
                        backgroundColor: const Color(0x4D1E2228),
                        textColor: Colors.white,
                        timeInSecForIosWeb: 1,
                        fontSize: 16.0);
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                "images/feed.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              "Pemandangan di alam ini sangat bagus sekali, saya sangat senang bisa berada disini yang membuat hati saya menjadi lebih tenang.",
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: "Save",
                          toastLength: Toast.LENGTH_SHORT,
                          backgroundColor: const Color(0x4D1E2228),
                          textColor: Colors.white,
                          timeInSecForIosWeb: 1,
                          fontSize: 16.0);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color(0xFFDAFEE4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.star_rounded,
                          size: 16,
                          color: Color(0xFF24B24C),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Save",
                          style: TextStyle(
                            color: Color(0xFF24B24C),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: "Comment",
                          toastLength: Toast.LENGTH_SHORT,
                          backgroundColor: const Color(0x4D1E2228),
                          textColor: Colors.white,
                          timeInSecForIosWeb: 1,
                          fontSize: 16.0);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color(0xFFE6E8EC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: const Text(
                      "Comment",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
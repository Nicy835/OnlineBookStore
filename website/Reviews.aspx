<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reviews.aspx.cs" Inherits="website.Reviews" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Orbit Reviews</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('image/page5.jpg');
            background-size: cover;            background-attachment: fixed;
            color: #fff;
        }
        h2 {
            color: yellow;
            text-shadow: 1px 1px 3px black;
        }
        h3 {
            margin-top: 20px;
            color: white;
        }
        .review-box {
            background: rgba(0,0,0,0.6);
            padding: 20px;
            border-radius: 12px;
            width: 500px;
            margin: auto;
        }
        .quote {
            font-style: italic;
            color: #ffd700;
            margin-bottom: 20px;
            font-size: 18px;
        }
        .stars input {
            display: none;
        }
        .stars label {
            float: right;
            padding: 5px;
            font-size: 28px;
            color: white;
            transition: 0.3s;
            cursor: pointer;
        }
        .stars input:checked ~ label,
        .stars label:hover,
        .stars label:hover ~ label {
            color: gold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <div class="review-box">
                <h2>Book Orbit Reviews</h2>
                <p class="quote">📖 "A reader lives a thousand lives before he dies. The man who never reads lives only one." — George R.R. Martin</p>

                <div class="stars">
                    <input type="radio" id="star5" name="rating" value="5" runat="server" />
                    <label for="star5">&#9733;</label>
                    <input type="radio" id="star4" name="rating" value="4" runat="server" />
                    <label for="star4">&#9733;</label>
                    <input type="radio" id="star3" name="rating" value="3" runat="server" />
                    <label for="star3">&#9733;</label>
                    <input type="radio" id="star2" name="rating" value="2" runat="server" />
                    <label for="star2">&#9733;</label>
                    <input type="radio" id="star1" name="rating" value="1" runat="server" />
                    <label for="star1">&#9733;</label>
                </div>
                <br />

                <asp:TextBox ID="txtReview" runat="server" TextMode="MultiLine" Rows="4" Columns="40"
                    placeholder="Write your review here..."></asp:TextBox><br /><br />

                <asp:Button ID="btnSubmit" runat="server" Text="Submit Review" OnClick="btnSubmit_Click" /><br /><br />

                <h3> Reviews</h3>
                <asp:BulletedList ID="blReviews" runat="server"></asp:BulletedList>
            </div>
        </center>
    </form>
</body>
</html>

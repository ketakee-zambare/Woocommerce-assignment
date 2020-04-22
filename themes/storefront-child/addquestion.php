<!-- 
    Template Name: Add Question
 -->
 <?php get_header();?>
 <div class="page-container">
 <section class="Page AddQuestion main" id="main">
    <header>
        <div class="AddQuestion-Header">
            <form class="QuestionEditor">
            <label class="FancyInput">
            <textarea class="QuestionEditor-TextSmall FancyInput-Field hasText" type="text" name="title" required="required" autocomplete="off" style="height: 38px; margin-bottom: 0px;">What are the best </textarea>
            <div class="FancyInput-Placeholder">Ask your question below</div>
            </label>
            <div class="QuestionTagSelector">
            <div class="QuestionTagSelector-SearchInput">
            <label class="FancyInput">
            <input class="FancyInput-Field" type="text" autocomplete="off">
            <div class="FancyInput-Placeholder">Add tags</div>
            </label>
            </div>
            <div class="QuestionTagSelector-SelectedList"></div>
            </div>
            <a href="#">
            <button class="QuestionEditor-SubmitButton" type="submit" disabled="disabled">Add Question</button>
            </a>
            </form>
        </div>
    </header>
</section>
 </div>
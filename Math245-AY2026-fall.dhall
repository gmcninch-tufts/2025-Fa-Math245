-- Time-stamp: <2025-08-14 Thu 17:41 EDT - george@valhalla>
let Dow = < Mon | Tue | Wed | Thu | Fri | Sat | Sun >

let concat = https://prelude.dhall-lang.org/List/concat

let EventTime = { start : Text, end : Text }

let ScheduleDetails =
      < DowTufts : { dow : Dow, time : EventTime, location : Text }
      | DowActual : { dow : Dow, time : EventTime, location : Text }
      | DowDue : { dow : Dow, deadline : Text }
      | Date : { date : Text, time : EventTime, location : Text }
      | DateDue : { date : Text, deadline : Text }
      >

let CourseComponent =
      < Lecture :
          { sched : List ScheduleDetails
          , description : Text
          , topics : List Text
          }
      | Recitation :
          { sched : List ScheduleDetails
          , description : Text
          , instructor : Text
          , topics : List Text
          }
      | Assignment :
          { sched : List ScheduleDetails
          , description : Text
          , assignments : List Text
          }
      | Exam : { sched : List ScheduleDetails, description : Text }
      >

let Task =
      < Repeating : { description : Text, dow : Dow, taskStaffList : List Text }
      | Single : { description : Text, deadline : Text, taskStaff : Text }
      | Meeting :
          { description : Text, time : EventTime, location : Text, dow : Dow }
      >

let tasks =
        [ Task.Meeting
            { description = "Office hours"
            , dow = Dow.Wed
            , time = { start = "13:30", end = "14:30" }
            , location = "JCC 559"
            }
        , Task.Meeting
            { description = "Office hours"
            , dow = Dow.Thu
            , time = { start = "14:30", end = "15:30" }
            , location = "JCC 559"
            }
        ]
      : List Task

let homework =
      CourseComponent.Assignment
        { description = "Homework collected on gradescope"
        , sched =
          [ ScheduleDetails.DowDue { dow = Dow.Sun, deadline = "23:59" } ]
        , assignments = ./topics/assignments.dhall : List Text
        }

let lectures =
      CourseComponent.Lecture
        { sched =
          [ ScheduleDetails.DowTufts
              { dow = Dow.Mon
              , time = { start = "09:00", end = "10:15" }
              , location = "JCC 502"
              }
          , ScheduleDetails.DowTufts
              { dow = Dow.Wed
              , time = { start = "09:00", end = "10:15" }
              , location = "JCC 502"
              }
          ]
        , topics = ./topics/lectures.dhall : List Text
        , description = "course lecture"
        }

let midterm =
      CourseComponent.Exam
        { description = "Midterm"
        , sched =
          [ ScheduleDetails.Date
              { date = "2025-10-22"
              , time = { start = "09:00", end = "10:15" }
              , location = "TBA"
              }
          ]
        }

let final-exam =
      CourseComponent.Exam
        { description = "Final Exam"
        , sched =
          [ ScheduleDetails.Date
              { date = "2025-12-13"
              , time = { start = "23:59", end = "" }
              , location = "TBA"
              }
          ]
        }

in  [ { courseAY = "AY2025-2026"
      , courseSem = "fall"
      , title = "Math245"
      , sections = [ "01" ]
      , chair = "George McNinch"
      , instructors = [] : List Text
      , tas = [ "" ]
      , courseDescription = "Graduate Algebra I"
      , target =
        { dir = "course-pages", base = "Math245", org = "/home/george/org/" }
      , courseComponents = [ lectures, midterm, final-exam ]
      , courseTasks = tasks : List Task
      }
    ]

var gulp = require('gulp'),
  uglify = require('gulp-uglify'),
  jade = require('gulp-jade'),
  sass = require('gulp-sass'),
  minify = require('gulp-minify'),
  browserSync = require('browser-sync').create(),
  concat = require('gulp-concat'),
  minifyCSS = require('gulp-minify-css'),
  minifyHTML = require('gulp-minify-html')

// SETUP BROWSERSYNC
gulp.task('browser-sync', function() {
  browserSync.init({
    server: {
      baseDir: '.dist/'
    }
  })
})

// TASK FOR JAVASCRIPT BUNDLING, MINIFICATION AND STREAMING
gulp.task('scripts', function() {
  return gulp.src(['app/scripts/**/*.js'])
    .pipe(uglify())
    .pipe(gulp.dest('dist/build'))
    .pipe(browserSync.stream())
})

// SCSS COMPILATION AND STREAMING
gulp.task('styles', function() {
  return gulp.src(['app/css/style.sass'])
    .pipe(sass())
    .on('error', function(err) {
      console.log(err)
      this.emit('end')
    })
    .pipe(minifyCSS())
    .pipe(gulp.dest('dist/css'))
    .pipe(browserSync.stream())
})

// HTML MINIFICATION AND STREAMING
gulp.task('html', function() {
  return gulp.src('app/*.html')
    .pipe(minifyHTML())
    .pipe(gulp.dest('dist/'))
    .pipe(browserSync.stream())
})

// JADE COMPILATION AND STREAMING
gulp.task('jade', function() {
  return gulp.src('app/*.jade')
    .pipe(jade())
    .on('error', function(err) {
      console.log(err)
      this.emit('end')
    })
    .pipe(minifyHTML())
    .pipe(gulp.dest('dist/'))
    .pipe(browserSync.stream())
})

// SERVING THE BROWSER W/ WATCHES
gulp.task('serve', ['styles', 'html', 'jade', 'scripts'], function() {
  browserSync.init({
    server: './dist'
  })
  gulp.watch('app/css/**/*.sass', ['styles'])
  gulp.watch('app/**/*.jade', ['jade']).on('change', browserSync.reload)
  gulp.watch('app/scripts/*.js', ['scripts'])
})

// DEFAULT GULP TASK
gulp.task('default', ['serve'])

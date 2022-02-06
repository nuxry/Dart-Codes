/* 
Full name of the problem: Determine offspring sex based on genes XX and XY chromosomes.

link: https://www.codewars.com/kata/56530b444e831334c0000020
*/

String chromosome_check(String sperm) =>
    "Congratulations! You're going to have a ${sperm == 'XX' ? 'daughter' : 'son'}.";

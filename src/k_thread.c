#include <stdio.h>
#include <errno.h>

#include "k_thread.h"

//static struct task_struct kthread1, kthread2, kthread3;


static int thread1_function(void *data) {
    printf("kthread1 run.\n");

    //while (!kthread_should_stop()) {
    //}

    printf("kthread1 exit\n");
}

static int thread2_function(void *data) {
    printf("kthread2 run.\n");

    //while (!kthread_should_stop()) {
    //}

    printf("kthread2 exit\n");
}

static int thread3_function(void *data) {
    printf("kthread3 run.\n");

    //while (!kthread_should_stop()) {
    //}

    printf("kthread3 exit\n");
}

int kthread_run(void) {
    printf("kthread_init\n");

//    kthread1 = kthread_run(thread1_function, 0, "%s", "kthread1");
//    kthread2 = kthread_run(thread2_function, 0, "%s", "kthread2");
//    kthread3 = kthread_run(thread3_function, 0, "%s", "kthread3");

    return 0;
}


.class final Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;
.super Landroid/os/Handler;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityStackSupervisorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4314
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    .line 4315
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4316
    return-void
.end method


# virtual methods
.method activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    .line 4319
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 4320
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;

    .line 4321
    monitor-exit v1

    .line 4322
    return-void

    .line 4321
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x2710

    const/4 v12, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 4326
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 4491
    :cond_0
    :goto_0
    return-void

    .line 4330
    :pswitch_0
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v7, v7, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v7, :cond_1

    .line 4331
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v8, v7, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 4332
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4333
    .local v4, "nmsg":Landroid/os/Message;
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v7, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4334
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v7, v4, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 4339
    .end local v4    # "nmsg":Landroid/os/Message;
    :cond_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 4343
    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 4346
    :pswitch_2
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v7, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 4347
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4348
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 4351
    :pswitch_3
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v7, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 4352
    :try_start_1
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4353
    const-string v7, "ActivityManager"

    const-string v9, "Sleep timeout!  Sleeping now."

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4354
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 4355
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 4357
    :cond_2
    monitor-exit v8

    goto :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v7

    .line 4360
    :pswitch_4
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v7, v7, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v7, :cond_3

    .line 4361
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v8, v7, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 4362
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v8, 0x68

    invoke-virtual {v7, v8, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4365
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v7, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 4366
    :try_start_2
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4367
    const-string v7, "ActivityManager"

    const-string v9, "Launch timeout has expired, giving up wake lock!"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4372
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4374
    :cond_4
    monitor-exit v8

    goto/16 :goto_0

    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v7

    .line 4377
    :pswitch_5
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mTvTaskNotify:Lcom/android/server/am/TvTaskNotify;
    invoke-static {v7}, Lcom/android/server/am/ActivityStackSupervisor;->access$000(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TvTaskNotify;

    move-result-object v7

    if-nez v7, :cond_5

    .line 4378
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v8, Lcom/android/server/am/TvTaskNotify;

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/server/am/TvTaskNotify;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mTvTaskNotify:Lcom/android/server/am/TvTaskNotify;
    invoke-static {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$002(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/TvTaskNotify;)Lcom/android/server/am/TvTaskNotify;

    .line 4380
    :cond_5
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v8, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayAdded(I)V
    invoke-static {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$100(Lcom/android/server/am/ActivityStackSupervisor;I)V

    goto/16 :goto_0

    .line 4383
    :pswitch_6
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v8, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayChanged(I)V
    invoke-static {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$200(Lcom/android/server/am/ActivityStackSupervisor;I)V

    goto/16 :goto_0

    .line 4386
    :pswitch_7
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v8, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayRemoved(I)V
    invoke-static {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;I)V

    goto/16 :goto_0

    .line 4389
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 4390
    .local v1, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 4391
    .local v0, "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v0, :cond_0

    .line 4393
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v6, :cond_6

    :goto_1
    invoke-interface {v0, v7, v6}, Landroid/app/IActivityContainerCallback;->setVisible(Landroid/os/IBinder;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 4394
    :catch_0
    move-exception v7

    goto/16 :goto_0

    :cond_6
    move v6, v8

    .line 4393
    goto :goto_1

    .line 4401
    .end local v0    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :pswitch_9
    :try_start_4
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v7}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v7

    if-nez v7, :cond_7

    .line 4402
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v8, Lcom/android/server/am/LockTaskNotify;

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$402(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 4404
    :cond_7
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v7}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/am/LockTaskNotify;->show(Z)V

    .line 4405
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v8, p1, Landroid/os/Message;->arg2:I

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$502(Lcom/android/server/am/ActivityStackSupervisor;I)I

    .line 4406
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v7}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 4407
    const/4 v3, 0x0

    .line 4408
    .local v3, "flags":I
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v7}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v7

    if-ne v7, v6, :cond_a

    .line 4409
    const/high16 v3, 0x3bf0000

    .line 4417
    :cond_8
    :goto_2
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v7}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v3, v8, v9}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 4420
    .end local v3    # "flags":I
    :cond_9
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v8

    const-string v9, "Lock-to-App"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4421
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v7}, Lcom/android/server/am/ActivityStackSupervisor;->access$800(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 4422
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v7}, Lcom/android/server/am/ActivityStackSupervisor;->access$800(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v8

    const/4 v9, 0x1

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v8, v9, v7, v10}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 4425
    :catch_1
    move-exception v2

    .line 4426
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 4411
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "flags":I
    :cond_a
    :try_start_5
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v7}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v7

    if-ne v7, v12, :cond_8

    .line 4412
    const/high16 v3, 0x29f0000

    goto :goto_2

    .line 4438
    .end local v3    # "flags":I
    :pswitch_a
    :try_start_6
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 4439
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v7}, Lcom/android/server/am/ActivityStackSupervisor;->access$800(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 4440
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v7}, Lcom/android/server/am/ActivityStackSupervisor;->access$800(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v9, v10, v11}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 4443
    :cond_b
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v7}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v7

    if-nez v7, :cond_c

    .line 4444
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v9, Lcom/android/server/am/LockTaskNotify;

    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v7, v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$402(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 4446
    :cond_c
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v7}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/server/am/LockTaskNotify;->show(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 4448
    :try_start_7
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "lock_to_app_exit_locked"

    invoke-static {v7, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_e

    .line 4451
    .local v6, "shouldLockKeyguard":Z
    :goto_3
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v7}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v7

    if-ne v7, v12, :cond_d

    if-eqz v6, :cond_d

    .line 4452
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 4453
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 4454
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v9, -0x1

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 4463
    .end local v6    # "shouldLockKeyguard":Z
    :cond_d
    :goto_4
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$502(Lcom/android/server/am/ActivityStackSupervisor;I)I

    goto/16 :goto_0

    :cond_e
    move v6, v8

    .line 4448
    goto :goto_3

    .line 4460
    :catch_2
    move-exception v2

    .line 4461
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_8
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 4463
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catchall_3
    move-exception v7

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I
    invoke-static {v9, v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$502(Lcom/android/server/am/ActivityStackSupervisor;I)I

    throw v7

    .line 4467
    :pswitch_b
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v7}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v7

    if-nez v7, :cond_f

    .line 4468
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v8, Lcom/android/server/am/LockTaskNotify;

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$402(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 4470
    :cond_f
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v7}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/android/server/am/LockTaskNotify;->showToast(I)V

    goto/16 :goto_0

    .line 4473
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 4474
    .restart local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 4475
    .restart local v0    # "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v0, :cond_0

    .line 4477
    :try_start_9
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/app/IActivityContainerCallback;->onAllActivitiesComplete(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 4478
    :catch_3
    move-exception v7

    goto/16 :goto_0

    .line 4483
    .end local v0    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :pswitch_d
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v7, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 4484
    :try_start_a
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v7}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 4485
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_10

    .line 4486
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v5}, Lcom/android/server/am/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4488
    :cond_10
    monitor-exit v8

    goto/16 :goto_0

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_4
    move-exception v7

    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v7

    .line 4457
    :catch_4
    move-exception v7

    goto :goto_4

    .line 4326
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

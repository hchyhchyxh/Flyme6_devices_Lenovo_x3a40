.class final Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SystemGestureEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 8299
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/PhoneWindowManager$1;

    .prologue
    .line 8299
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 8305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 8306
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 8307
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 8309
    .local v2, "y":I
    packed-switch v0, :pswitch_data_0

    .line 8352
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 8313
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->gshValidDownPos(II)Z
    invoke-static {v4, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$3500(Lcom/android/server/policy/PhoneWindowManager;II)Z

    move-result v4

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->mGshDown:Z
    invoke-static {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->access$3402(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 8314
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mGshDown:Z
    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->access$3400(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8315
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->mGshDownTime:J
    invoke-static {v3, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->access$3602(Lcom/android/server/policy/PhoneWindowManager;J)J

    .line 8316
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mGshCheckTimeout:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8317
    const-string v3, "WindowManager"

    const-string v4, "in onPointerEvent huangzh3 postDelayed : GSH_GESTRUE_TIMEOUT:1500"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8318
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mGshCheckTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x5dc

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8319
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->mGshDownX:I
    invoke-static {v3, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$3702(Lcom/android/server/policy/PhoneWindowManager;I)I

    .line 8320
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->mGshDownY:I
    invoke-static {v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$3802(Lcom/android/server/policy/PhoneWindowManager;I)I

    goto :goto_0

    .line 8328
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mGshDown:Z
    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->access$3400(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8329
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->gshGestureCheck(II)V
    invoke-static {v3, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$3900(Lcom/android/server/policy/PhoneWindowManager;II)V

    goto :goto_0

    .line 8341
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mGshDown:Z
    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->access$3400(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8342
    const-string v3, "WindowManager"

    const-string v4, "in onPointerEvent huangzh3 removeCallbacks postDelayed :"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8343
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mGshCheckTimeout:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8344
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->gshGestureCheck(II)V
    invoke-static {v3, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$3900(Lcom/android/server/policy/PhoneWindowManager;II)V

    .line 8346
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mGshDown:Z
    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->access$3400(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8347
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->gshGestureCalculate(II)V
    invoke-static {v3, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4000(Lcom/android/server/policy/PhoneWindowManager;II)V

    .line 8348
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->mGshDown:Z
    invoke-static {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->access$3402(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    goto/16 :goto_0

    .line 8309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

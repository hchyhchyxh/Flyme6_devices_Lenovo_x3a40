.class Lcom/android/server/wm/WindowAnimator$1;
.super Ljava/lang/Object;
.source "WindowAnimator.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowAnimator;-><init>(Lcom/android/server/wm/WindowManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowAnimator;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator$1;->this$0:Lcom/android/server/wm/WindowAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 3
    .param p1, "frameTimeNs"    # J

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator$1;->this$0:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator$1;->this$0:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationScheduled:Z

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator$1;->this$0:Lcom/android/server/wm/WindowAnimator;

    # invokes: Lcom/android/server/wm/WindowAnimator;->animateLocked(J)V
    invoke-static {v0, p1, p2}, Lcom/android/server/wm/WindowAnimator;->access$000(Lcom/android/server/wm/WindowAnimator;J)V

    .line 124
    monitor-exit v1

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

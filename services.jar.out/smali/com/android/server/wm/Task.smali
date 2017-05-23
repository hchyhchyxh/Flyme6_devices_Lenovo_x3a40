.class Lcom/android/server/wm/Task;
.super Ljava/lang/Object;
.source "Task.java"


# instance fields
.field final mAppTokens:Lcom/android/server/wm/AppTokenList;

.field mDeferRemoval:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mStack:Lcom/android/server/wm/TaskStack;

.field final mTaskId:I

.field final mUserId:I


# direct methods
.method constructor <init>(ILcom/android/server/wm/TaskStack;ILcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "userId"    # I
    .param p4, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 39
    iput p1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 40
    iput-object p2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 41
    iput p3, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 42
    iput-object p4, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 43
    return-void
.end method


# virtual methods
.method addAppToken(ILcom/android/server/wm/AppWindowToken;)V
    .locals 3
    .param p1, "addPos"    # I
    .param p2, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 50
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    .line 51
    .local v0, "lastPos":I
    if-lt p1, v0, :cond_1

    .line 52
    move p1, v0

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/AppTokenList;->add(ILjava/lang/Object;)V

    .line 62
    iput-object p0, p2, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 63
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 64
    return-void

    .line 54
    :cond_1
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    if-ge v1, v0, :cond_0

    if-ge v1, p1, :cond_0

    .line 55
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v2, :cond_2

    .line 57
    add-int/lit8 p1, p1, 0x1

    .line 54
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method moveTaskToStack(Lcom/android/server/wm/TaskStack;Z)V
    .locals 4
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "toTop"    # Z

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 99
    :cond_0
    const/16 v0, 0x791b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "moveTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    .line 103
    :cond_1
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    goto :goto_0
.end method

.method removeAppToken(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 5
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 108
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 109
    const/16 v1, 0x791b

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "removeAppToken: last token"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 111
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeLocked()V

    .line 115
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 119
    return v0
.end method

.method removeLocked()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeLocked(Z)V

    .line 68
    return-void
.end method

.method removeLocked(Z)V
    .locals 5
    .param p1, "immediately"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const/16 v0, 0x791b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "removeTask"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 78
    iput-boolean v4, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const v1, 0xf423f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "sys.wfd.enhanced.forcerotation"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "sys.wfd.enhanced.forcedpi"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->configRemoteDisplayInfoLocked(Z)V

    goto :goto_0
.end method

.method setSendingToBottom(Z)V
    .locals 2
    .param p1, "toBottom"    # Z

    .prologue
    .line 123
    const/4 v0, 0x0

    .local v0, "appTokenNdx":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iput-boolean p1, v1, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method showForAllUsers()Z
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    .line 130
    .local v0, "tokensCount":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->showForAllUsers:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mdr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

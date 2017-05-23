.class public Lcom/android/server/am/TvTaskNotify;
.super Ljava/lang/Object;
.source "TvTaskNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TvTaskNotify$1;,
        Lcom/android/server/am/TvTaskNotify$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TvTaskNotify"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/am/TvTaskNotify$H;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/am/TvTaskNotify;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/android/server/am/TvTaskNotify$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/TvTaskNotify$H;-><init>(Lcom/android/server/am/TvTaskNotify;Lcom/android/server/am/TvTaskNotify$1;)V

    iput-object v0, p0, Lcom/android/server/am/TvTaskNotify;->mHandler:Lcom/android/server/am/TvTaskNotify$H;

    .line 39
    return-void
.end method


# virtual methods
.method public handleStartRemoteController()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.action.TVController"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x30800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    iget-object v1, p0, Lcom/android/server/am/TvTaskNotify;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method public showRemote()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/android/server/am/TvTaskNotify;->mHandler:Lcom/android/server/am/TvTaskNotify$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/am/TvTaskNotify$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 43
    return-void
.end method

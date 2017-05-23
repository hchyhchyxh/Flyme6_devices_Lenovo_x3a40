.class Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 6

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 1169
    const v1, 0x9020007

    const v2, 0x9020006

    const v3, 0x104013d

    const v4, 0x104013e

    const v5, 0x104013f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    .line 1176
    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1214
    if-eqz p1, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$1600(Lcom/android/server/policy/GlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 1221
    :goto_0
    return-void

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$1600(Lcom/android/server/policy/GlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_0
.end method

.method setMute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .prologue
    .line 1201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1203
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "ringtone"

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1204
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$200(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1205
    return-void

    .line 1203
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1228
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1224
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 3

    .prologue
    const v2, 0x9020007

    .line 1181
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$1600(Lcom/android/server/policy/GlobalActions;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1185
    .local v0, "ringerMode":I
    if-nez v0, :cond_0

    .line 1186
    iput v2, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->mEnabledIconResId:I

    .line 1195
    :goto_0
    return-void

    .line 1188
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1189
    const v1, 0x902000c

    iput v1, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->mEnabledIconResId:I

    goto :goto_0

    .line 1192
    :cond_1
    iput v2, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->mEnabledIconResId:I

    goto :goto_0
.end method

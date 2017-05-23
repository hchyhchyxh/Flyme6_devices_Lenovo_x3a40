.class final Lcom/android/server/am/ActivityManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 12699
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$SettingsObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 12700
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 12701
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 12705
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$SettingsObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->handleSettingsChanged()V
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$2400(Lcom/android/server/am/ActivityManagerService;)V

    .line 12706
    return-void
.end method

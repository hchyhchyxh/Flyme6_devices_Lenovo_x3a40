.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 2747
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 150
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 79
    if-nez p0, :cond_1

    .line 80
    const/4 v0, 0x0

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :cond_1
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 84
    .local v0, "in":Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    .line 88
    new-instance v0, Landroid/app/ActivityManagerProxy;

    .end local v0    # "in":Landroid/app/IActivityManager;
    invoke-direct {v0, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 110
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V

    .line 111
    return-void
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 14
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "appOp"    # I
    .param p3, "userId"    # I

    .prologue
    .line 120
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v2, p0

    move/from16 v9, p2

    move/from16 v13, p3

    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 102
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 105
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 2
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 144
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 2
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "sourcePkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 130
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 2744
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 296
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    move/from16 v0, p1

    sparse-switch v0, :sswitch_data_0

    .line 2740
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 161
    :sswitch_0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/datamining/avatar/system/IAppExceptionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;

    move-result-object v239

    .line 166
    .local v239, "observer":Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerAppExceptionListener(Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;)V

    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    const/4 v6, 0x1

    goto :goto_0

    .line 175
    .end local v239    # "observer":Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;
    :sswitch_1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 177
    .local v179, "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 178
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 180
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 181
    .local v10, "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 182
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 183
    .local v12, "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 184
    .local v13, "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 185
    .local v14, "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 187
    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .local v16, "options":Landroid/os/Bundle;
    :goto_2
    move-object/from16 v6, p0

    .line 189
    invoke-virtual/range {v6 .. v16}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    move/16 v265, v0

    .line 191
    .local v265, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    move-object/from16 v0, p3

    move/from16 v1, v265

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 185
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v265    # "result":I
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .line 187
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_1
    const/16 v16, 0x0

    goto :goto_2

    .line 198
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v179    # "b":Landroid/os/IBinder;
    :sswitch_2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 200
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 201
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 202
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 203
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 204
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 205
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 206
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 207
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 208
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 210
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 212
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "userId":I
    move-object/from16 v6, p0

    .line 213
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v265, v0

    .line 215
    .restart local v265    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    move-object/from16 v0, p3

    move/from16 v1, v265

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 208
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v265    # "result":I
    :cond_2
    const/4 v15, 0x0

    goto :goto_3

    .line 210
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_3
    const/16 v16, 0x0

    goto :goto_4

    .line 222
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v179    # "b":Landroid/os/IBinder;
    :sswitch_3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 224
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 225
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 226
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 227
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 228
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 229
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 230
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 231
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 232
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 234
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 236
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    const/16 v29, 0x1

    .line 237
    .local v29, "ignoreTargetSecurity":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, v15

    move-object/from16 v28, v16

    move/from16 v30, v17

    .line 238
    invoke-virtual/range {v18 .. v30}, Landroid/app/ActivityManagerNative;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v0

    move/16 v265, v0

    .line 241
    .restart local v265    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    move-object/from16 v0, p3

    move/from16 v1, v265

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 232
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v29    # "ignoreTargetSecurity":Z
    .end local v265    # "result":I
    :cond_4
    const/4 v15, 0x0

    goto :goto_5

    .line 234
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    .line 236
    .restart local v16    # "options":Landroid/os/Bundle;
    :cond_6
    const/16 v29, 0x0

    goto :goto_7

    .line 248
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v179    # "b":Landroid/os/IBinder;
    :sswitch_4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 250
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 251
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 252
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 253
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 254
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 255
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 256
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 257
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 258
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 260
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 262
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v6, p0

    .line 263
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v0

    move-object/16 v265, v0

    .line 265
    .local v265, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    const/4 v6, 0x0

    move-object/from16 v0, v265

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 267
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 258
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v265    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_7
    const/4 v15, 0x0

    goto :goto_8

    .line 260
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_8
    const/16 v16, 0x0

    goto :goto_9

    .line 272
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v179    # "b":Landroid/os/IBinder;
    :sswitch_5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 274
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 275
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 276
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 277
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 278
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 279
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 280
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 281
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 282
    .restart local v14    # "startFlags":I
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 283
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 285
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    move/from16 v37, v13

    move/from16 v38, v14

    move-object/from16 v40, v16

    move/from16 v41, v17

    .line 286
    invoke-virtual/range {v30 .. v41}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v265, v0

    .line 288
    .local v265, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    move-object/from16 v0, p3

    move/from16 v1, v265

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 283
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v265    # "result":I
    :cond_9
    const/16 v16, 0x0

    goto :goto_a

    .line 295
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v39    # "config":Landroid/content/res/Configuration;
    .end local v179    # "b":Landroid/os/IBinder;
    :sswitch_6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 297
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 298
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/IntentSender;

    .line 299
    .local v9, "intent":Landroid/content/IntentSender;
    const/16 v21, 0x0

    .line 300
    .local v21, "fillInIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 301
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "fillInIntent":Landroid/content/Intent;
    check-cast v21, Landroid/content/Intent;

    .line 303
    .restart local v21    # "fillInIntent":Landroid/content/Intent;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 304
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 305
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 306
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 307
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 308
    .local v26, "flagsMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 309
    .local v27, "flagsValues":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_b
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move-object/from16 v28, v16

    .line 311
    invoke-virtual/range {v18 .. v28}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    move/16 v265, v0

    .line 314
    .restart local v265    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    move-object/from16 v0, p3

    move/from16 v1, v265

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 309
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v265    # "result":I
    :cond_b
    const/16 v16, 0x0

    goto :goto_b

    .line 321
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/IntentSender;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v21    # "fillInIntent":Landroid/content/Intent;
    .end local v26    # "flagsMask":I
    .end local v27    # "flagsValues":I
    .end local v179    # "b":Landroid/os/IBinder;
    :sswitch_7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 323
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 324
    .local v42, "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 325
    .local v43, "callingUid":I
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 326
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 327
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 329
    .local v46, "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v47

    .line 331
    .local v47, "interactor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 332
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 334
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 336
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v40, p0

    move-object/from16 v41, v8

    move-object/from16 v44, v9

    move-object/from16 v45, v10

    move/from16 v48, v14

    move-object/from16 v49, v15

    move-object/from16 v50, v16

    move/from16 v51, v17

    .line 337
    invoke-virtual/range {v40 .. v51}, Landroid/app/ActivityManagerNative;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v265, v0

    .line 339
    .restart local v265    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    move-object/from16 v0, p3

    move/from16 v1, v265

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 332
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v265    # "result":I
    :cond_c
    const/4 v15, 0x0

    goto :goto_c

    .line 334
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_d
    const/16 v16, 0x0

    goto :goto_d

    .line 346
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    .end local v47    # "interactor":Lcom/android/internal/app/IVoiceInteractor;
    :sswitch_8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v184

    .line 348
    .local v184, "callingActivity":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 349
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 351
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v184

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v265, v0

    .line 352
    .local v265, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    move/from16 v0, v265

    if-eqz v0, :cond_f

    const/4 v6, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 349
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v265    # "result":Z
    :cond_e
    const/16 v16, 0x0

    goto :goto_e

    .line 353
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v265    # "result":Z
    :cond_f
    const/4 v6, 0x0

    goto :goto_f

    .line 359
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v184    # "callingActivity":Landroid/os/IBinder;
    .end local v265    # "result":Z
    :sswitch_9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v282, v0

    .line 361
    .local v282, "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_10

    const/16 v16, 0x0

    .line 362
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v282

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v0

    move/16 v265, v0

    .line 363
    .local v265, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    move-object/from16 v0, p3

    move/from16 v1, v265

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 361
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v265    # "result":I
    :cond_10
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    goto :goto_10

    .line 369
    .end local v282    # "taskId":I
    :sswitch_a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 371
    .local v73, "token":Landroid/os/IBinder;
    const/16 v54, 0x0

    .line 372
    .local v54, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 373
    .local v53, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    .line 374
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    .end local v54    # "resultData":Landroid/content/Intent;
    check-cast v54, Landroid/content/Intent;

    .line 376
    .restart local v54    # "resultData":Landroid/content/Intent;
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    const/16 v200, 0x1

    .line 377
    .local v200, "finishTask":Z
    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v200

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    move-result v0

    move/16 v262, v0

    .line 378
    .local v262, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    move/from16 v0, v262

    if-eqz v0, :cond_13

    const/4 v6, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 376
    .end local v200    # "finishTask":Z
    .end local v262    # "res":Z
    :cond_12
    const/16 v200, 0x0

    goto :goto_11

    .line 379
    .restart local v200    # "finishTask":Z
    .restart local v262    # "res":Z
    :cond_13
    const/4 v6, 0x0

    goto :goto_12

    .line 384
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Landroid/content/Intent;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v200    # "finishTask":Z
    .end local v262    # "res":Z
    :sswitch_b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 386
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 387
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 388
    .restart local v13    # "requestCode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1, v12, v13}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 394
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 396
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v262, v0

    .line 397
    .restart local v262    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    move/from16 v0, v262

    if-eqz v0, :cond_14

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 398
    :cond_14
    const/4 v6, 0x0

    goto :goto_13

    .line 403
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v262    # "res":Z
    :sswitch_d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 406
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 412
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :sswitch_e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 414
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v262, v0

    .line 415
    .restart local v262    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    move/from16 v0, v262

    if-eqz v0, :cond_15

    const/4 v6, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 416
    :cond_15
    const/4 v6, 0x0

    goto :goto_14

    .line 421
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v262    # "res":Z
    :sswitch_f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 423
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 429
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :sswitch_10
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 431
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v262, v0

    .line 432
    .restart local v262    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    move/from16 v0, v262

    if-eqz v0, :cond_16

    const/4 v6, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 433
    :cond_16
    const/4 v6, 0x0

    goto :goto_15

    .line 439
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v262    # "res":Z
    :sswitch_11
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 441
    .restart local v179    # "b":Landroid/os/IBinder;
    if-eqz v179, :cond_17

    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 443
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 444
    .local v32, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 445
    if-eqz v179, :cond_18

    invoke-static/range {v179 .. v179}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v33

    .line 447
    .local v33, "rec":Landroid/content/IIntentReceiver;
    :goto_17
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/IntentFilter;

    .line 448
    .local v34, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 449
    .local v35, "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    move-object/from16 v31, v7

    move/from16 v36, v17

    .line 450
    invoke-virtual/range {v30 .. v36}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    .line 451
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    if-eqz v9, :cond_19

    .line 453
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 458
    :goto_18
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 441
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    :cond_17
    const/4 v7, 0x0

    goto :goto_16

    .line 445
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v32    # "packageName":Ljava/lang/String;
    :cond_18
    const/16 v33, 0x0

    goto :goto_17

    .line 456
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v17    # "userId":I
    .restart local v33    # "rec":Landroid/content/IIntentReceiver;
    .restart local v34    # "filter":Landroid/content/IntentFilter;
    .restart local v35    # "perm":Ljava/lang/String;
    :cond_19
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 463
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    .end local v179    # "b":Landroid/os/IBinder;
    :sswitch_12
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 465
    .restart local v179    # "b":Landroid/os/IBinder;
    if-nez v179, :cond_1a

    .line 466
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 468
    :cond_1a
    invoke-static/range {v179 .. v179}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v33

    .line 469
    .restart local v33    # "rec":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 476
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .end local v179    # "b":Landroid/os/IBinder;
    :sswitch_13
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 478
    .restart local v179    # "b":Landroid/os/IBinder;
    if-eqz v179, :cond_1b

    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 480
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    :goto_19
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 481
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 482
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 483
    if-eqz v179, :cond_1c

    invoke-static/range {v179 .. v179}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v11

    .line 485
    .local v11, "resultTo":Landroid/content/IIntentReceiver;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 486
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 487
    .local v54, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 488
    .local v55, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v56

    .line 489
    .local v56, "perms":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .line 490
    .local v57, "appOp":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v16

    .line 491
    .restart local v16    # "options":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v59, 0x1

    .line 492
    .local v59, "serialized":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    const/16 v60, 0x1

    .line 493
    .local v60, "sticky":Z
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v48, p0

    move-object/from16 v49, v7

    move-object/from16 v50, v9

    move-object/from16 v51, v10

    move-object/from16 v52, v11

    move-object/from16 v58, v16

    move/from16 v61, v17

    .line 494
    invoke-virtual/range {v48 .. v61}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v0

    move/16 v262, v0

    .line 497
    .local v262, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    move-object/from16 v0, p3

    move/from16 v1, v262

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 478
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v60    # "sticky":Z
    .end local v262    # "res":I
    :cond_1b
    const/4 v7, 0x0

    goto :goto_19

    .line 483
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    :cond_1c
    const/4 v11, 0x0

    goto :goto_1a

    .line 491
    .restart local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v53    # "resultCode":I
    .restart local v54    # "resultData":Ljava/lang/String;
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    .restart local v56    # "perms":[Ljava/lang/String;
    .restart local v57    # "appOp":I
    :cond_1d
    const/16 v59, 0x0

    goto :goto_1b

    .line 492
    .restart local v59    # "serialized":Z
    :cond_1e
    const/16 v60, 0x0

    goto :goto_1c

    .line 504
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v179    # "b":Landroid/os/IBinder;
    :sswitch_14
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 506
    .restart local v179    # "b":Landroid/os/IBinder;
    if-eqz v179, :cond_1f

    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 507
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    :goto_1d
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 508
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 509
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v9, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 506
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    :cond_1f
    const/4 v7, 0x0

    goto :goto_1d

    .line 515
    .end local v179    # "b":Landroid/os/IBinder;
    :sswitch_15
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 517
    .local v62, "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 518
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 519
    .restart local v54    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 520
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    const/16 v66, 0x1

    .line 521
    .local v66, "resultAbort":Z
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 522
    .local v67, "intentFlags":I
    if-eqz v62, :cond_20

    move-object/from16 v61, p0

    move/from16 v63, v53

    move-object/from16 v64, v54

    move-object/from16 v65, v55

    .line 523
    invoke-virtual/range {v61 .. v67}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 525
    :cond_20
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 520
    .end local v66    # "resultAbort":Z
    .end local v67    # "intentFlags":I
    :cond_21
    const/16 v66, 0x0

    goto :goto_1e

    .line 530
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v62    # "who":Landroid/os/IBinder;
    :sswitch_16
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 533
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    if-eqz v7, :cond_22

    .line 534
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 536
    :cond_22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 541
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :sswitch_17
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 543
    .restart local v73    # "token":Landroid/os/IBinder;
    const/16 v39, 0x0

    .line 544
    .restart local v39    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    .line 545
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    .end local v39    # "config":Landroid/content/res/Configuration;
    check-cast v39, Landroid/content/res/Configuration;

    .line 547
    .restart local v39    # "config":Landroid/content/res/Configuration;
    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    const/4 v0, 0x1

    move/16 v276, v0

    .line 548
    .local v276, "stopProfiling":Z
    :goto_1f
    if-eqz v73, :cond_24

    .line 549
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v39

    move/from16 v3, v276

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 551
    :cond_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 547
    .end local v276    # "stopProfiling":Z
    :cond_25
    const/4 v0, 0x0

    move/16 v276, v0

    goto :goto_1f

    .line 556
    .end local v39    # "config":Landroid/content/res/Configuration;
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_18
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 558
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityResumed(Landroid/os/IBinder;)V

    .line 559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 564
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_19
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 566
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 567
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 572
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_1a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 574
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v231

    .line 575
    .local v231, "map":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v246

    .line 576
    .local v246, "persistentState":Landroid/os/PersistableBundle;
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v191

    check-cast v191, Ljava/lang/CharSequence;

    .line 577
    .local v191, "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v231

    move-object/from16 v3, v246

    move-object/from16 v4, v191

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 578
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 583
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v191    # "description":Ljava/lang/CharSequence;
    .end local v231    # "map":Landroid/os/Bundle;
    .end local v246    # "persistentState":Landroid/os/PersistableBundle;
    :sswitch_1b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 585
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 591
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_1c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 593
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 599
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_1d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 601
    .restart local v73    # "token":Landroid/os/IBinder;
    if-eqz v73, :cond_26

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v262, v0

    .line 602
    .local v262, "res":Ljava/lang/String;
    :goto_20
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    move-object/from16 v0, p3

    move-object/from16 v1, v262

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 604
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 601
    .end local v262    # "res":Ljava/lang/String;
    :cond_26
    const/4 v0, 0x0

    move-object/16 v262, v0

    goto :goto_20

    .line 608
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_1e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 610
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v186

    .line 611
    .local v186, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    move-object/from16 v0, v186

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 613
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 617
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v186    # "cn":Landroid/content/ComponentName;
    :sswitch_1f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 619
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/app/ActivityManagerNative;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v227

    .line 620
    .local v227, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    if-eqz v227, :cond_27

    invoke-interface/range {v227 .. v227}, Ljava/util/List;->size()I

    move-result v167

    .line 622
    .local v167, "N":I
    :goto_21
    move-object/from16 v0, p3

    move/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    const/16 v204, 0x0

    .local v204, "i":I
    :goto_22
    move/from16 v0, v204

    move/from16 v1, v167

    if-ge v0, v1, :cond_28

    .line 625
    move-object/from16 v0, v227

    move/from16 v1, v204

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v281, v0

    move-object/from16 v0, v281

    check-cast v0, Landroid/app/IAppTask;

    move-object/16 v281, v0

    .line 626
    .local v281, "task":Landroid/app/IAppTask;
    invoke-interface/range {v281 .. v281}, Landroid/app/IAppTask;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 624
    add-int/lit8 v204, v204, 0x1

    goto :goto_22

    .line 621
    .end local v167    # "N":I
    .end local v204    # "i":I
    .end local v281    # "task":Landroid/app/IAppTask;
    :cond_27
    const/16 v167, -0x1

    goto :goto_21

    .line 628
    .restart local v167    # "N":I
    .restart local v204    # "i":I
    :cond_28
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 632
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v167    # "N":I
    .end local v204    # "i":I
    .end local v227    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    :sswitch_20
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v171

    .line 634
    .local v171, "activityToken":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 635
    .restart local v9    # "intent":Landroid/content/Intent;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v190

    check-cast v190, Landroid/app/ActivityManager$TaskDescription;

    .line 637
    .local v190, "descr":Landroid/app/ActivityManager$TaskDescription;
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v284, v0

    move-object/from16 v0, v284

    check-cast v0, Landroid/graphics/Bitmap;

    move-object/16 v284, v0

    .line 638
    .local v284, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v171

    move-object/from16 v2, v190

    move-object/from16 v3, v284

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/app/ActivityManagerNative;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v0

    move/16 v262, v0

    .line 639
    .local v262, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    move-object/from16 v0, p3

    move/from16 v1, v262

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 645
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v171    # "activityToken":Landroid/os/IBinder;
    .end local v190    # "descr":Landroid/app/ActivityManager$TaskDescription;
    .end local v262    # "res":I
    .end local v284    # "thumbnail":Landroid/graphics/Bitmap;
    :sswitch_21
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    move-object/16 v270, v0

    .line 647
    .local v270, "size":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    const/4 v6, 0x0

    move-object/from16 v0, v270

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 649
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 653
    .end local v270    # "size":Landroid/graphics/Point;
    :sswitch_22
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v233

    .line 655
    .local v233, "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 656
    .local v83, "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v233

    move/from16 v2, v83

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTasks(II)Ljava/util/List;

    move-result-object v225

    .line 657
    .local v225, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    if-eqz v225, :cond_29

    invoke-interface/range {v225 .. v225}, Ljava/util/List;->size()I

    move-result v167

    .line 659
    .restart local v167    # "N":I
    :goto_23
    move-object/from16 v0, p3

    move/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    const/16 v204, 0x0

    .restart local v204    # "i":I
    :goto_24
    move/from16 v0, v204

    move/from16 v1, v167

    if-ge v0, v1, :cond_2a

    .line 662
    move-object/from16 v0, v225

    move/from16 v1, v204

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v208

    check-cast v208, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 663
    .local v208, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v208

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 661
    add-int/lit8 v204, v204, 0x1

    goto :goto_24

    .line 658
    .end local v167    # "N":I
    .end local v204    # "i":I
    .end local v208    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_29
    const/16 v167, -0x1

    goto :goto_23

    .line 665
    .restart local v167    # "N":I
    .restart local v204    # "i":I
    :cond_2a
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 669
    .end local v83    # "fl":I
    .end local v167    # "N":I
    .end local v204    # "i":I
    .end local v225    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v233    # "maxNum":I
    :sswitch_23
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v233

    .line 671
    .restart local v233    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 672
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 673
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v233

    move/from16 v2, v83

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Ljava/util/List;

    move-result-object v222

    .line 675
    .local v222, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    move-object/from16 v0, p3

    move-object/from16 v1, v222

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 677
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 681
    .end local v17    # "userId":I
    .end local v83    # "fl":I
    .end local v222    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v233    # "maxNum":I
    :sswitch_24
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v74

    .line 683
    .local v74, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v0

    move-object/16 v283, v0

    .line 684
    .local v283, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    move-object/from16 v0, v283

    if-eqz v0, :cond_2b

    .line 686
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    const/4 v6, 0x1

    move-object/from16 v0, v283

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskThumbnail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 691
    :goto_25
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 689
    :cond_2b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 695
    .end local v74    # "id":I
    .end local v283    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :sswitch_25
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v233

    .line 697
    .restart local v233    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 698
    .restart local v83    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v233

    move/from16 v2, v83

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v224

    .line 699
    .local v224, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    if-eqz v224, :cond_2c

    invoke-interface/range {v224 .. v224}, Ljava/util/List;->size()I

    move-result v167

    .line 701
    .restart local v167    # "N":I
    :goto_26
    move-object/from16 v0, p3

    move/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    const/16 v204, 0x0

    .restart local v204    # "i":I
    :goto_27
    move/from16 v0, v204

    move/from16 v1, v167

    if-ge v0, v1, :cond_2d

    .line 704
    move-object/from16 v0, v224

    move/from16 v1, v204

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v208

    check-cast v208, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 705
    .local v208, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v208

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 703
    add-int/lit8 v204, v204, 0x1

    goto :goto_27

    .line 700
    .end local v167    # "N":I
    .end local v204    # "i":I
    .end local v208    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2c
    const/16 v167, -0x1

    goto :goto_26

    .line 707
    .restart local v167    # "N":I
    .restart local v204    # "i":I
    :cond_2d
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 711
    .end local v83    # "fl":I
    .end local v167    # "N":I
    .end local v204    # "i":I
    .end local v224    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v233    # "maxNum":I
    :sswitch_26
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v221

    .line 713
    .local v221, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    move-object/from16 v0, p3

    move-object/from16 v1, v221

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 715
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 719
    .end local v221    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :sswitch_27
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v223

    .line 721
    .local v223, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    move-object/from16 v0, p3

    move-object/from16 v1, v223

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 723
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 727
    .end local v223    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :sswitch_28
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v228

    .line 729
    .local v228, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    move-object/from16 v0, p3

    move-object/from16 v1, v228

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 731
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 735
    .end local v228    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_29
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v281, v0

    .line 737
    .local v281, "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 738
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 740
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_28
    move-object/from16 v0, p0

    move/from16 v1, v281

    move/from16 v2, v83

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 741
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 738
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_2e
    const/16 v16, 0x0

    goto :goto_28

    .line 746
    .end local v83    # "fl":I
    .end local v281    # "task":I
    :sswitch_2a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 748
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2f

    const/16 v238, 0x1

    .line 749
    .local v238, "nonRoot":Z
    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v238

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v262, v0

    .line 750
    .local v262, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    move/from16 v0, v262

    if-eqz v0, :cond_30

    const/4 v6, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 748
    .end local v238    # "nonRoot":Z
    .end local v262    # "res":Z
    :cond_2f
    const/16 v238, 0x0

    goto :goto_29

    .line 751
    .restart local v238    # "nonRoot":Z
    .restart local v262    # "res":Z
    :cond_30
    const/4 v6, 0x0

    goto :goto_2a

    .line 756
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v238    # "nonRoot":Z
    .end local v262    # "res":Z
    :sswitch_2b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v281, v0

    .line 758
    .restart local v281    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v281

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 759
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 764
    .end local v281    # "task":I
    :sswitch_2c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v282, v0

    .line 766
    .restart local v282    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v274, v0

    .line 767
    .local v274, "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31

    const/4 v0, 0x1

    move/16 v285, v0

    .line 768
    .local v285, "toTop":Z
    :goto_2b
    move-object/from16 v0, p0

    move/from16 v1, v282

    move/from16 v2, v274

    move/from16 v3, v285

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToStack(IIZ)V

    .line 769
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 767
    .end local v285    # "toTop":Z
    :cond_31
    const/4 v0, 0x0

    move/16 v285, v0

    goto :goto_2b

    .line 774
    .end local v274    # "stackId":I
    .end local v282    # "taskId":I
    :sswitch_2d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v274, v0

    .line 776
    .restart local v274    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v193

    .line 777
    .local v193, "displayId":I
    move-object/from16 v0, p0

    move/from16 v1, v274

    move/from16 v2, v193

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->createStackOnDisplay(II)V

    .line 778
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 783
    .end local v193    # "displayId":I
    .end local v274    # "stackId":I
    :sswitch_2e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v274, v0

    .line 785
    .restart local v274    # "stackId":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v257, v0

    move-object/from16 v0, v257

    check-cast v0, Landroid/graphics/Rect;

    move-object/16 v257, v0

    .line 786
    .local v257, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v274

    move-object/from16 v2, v257

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizeStack(ILandroid/graphics/Rect;)V

    .line 787
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 792
    .end local v257    # "r":Landroid/graphics/Rect;
    .end local v274    # "stackId":I
    :sswitch_2f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAllStackInfos()Ljava/util/List;

    move-result-object v226

    .line 794
    .local v226, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    move-object/from16 v0, p3

    move-object/from16 v1, v226

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 796
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 800
    .end local v226    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :sswitch_30
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v274, v0

    .line 802
    .restart local v274    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v274

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v208

    .line 803
    .local v208, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    if-eqz v208, :cond_32

    .line 805
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 806
    const/4 v6, 0x0

    move-object/from16 v0, v208

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 810
    :goto_2c
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 808
    :cond_32
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    .line 814
    .end local v208    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v274    # "stackId":I
    :sswitch_31
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v282, v0

    .line 816
    .restart local v282    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v282

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInHomeStack(I)Z

    move-result v212

    .line 817
    .local v212, "isInHomeStack":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    if-eqz v212, :cond_33

    const/4 v6, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 818
    :cond_33
    const/4 v6, 0x0

    goto :goto_2d

    .line 823
    .end local v212    # "isInHomeStack":Z
    .end local v282    # "taskId":I
    :sswitch_32
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v282, v0

    .line 825
    .restart local v282    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v282

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInTvStack(I)Z

    move-result v214

    .line 826
    .local v214, "isInTvStack":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    if-eqz v214, :cond_34

    const/4 v6, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 827
    :cond_34
    const/4 v6, 0x0

    goto :goto_2e

    .line 832
    .end local v214    # "isInTvStack":Z
    .end local v282    # "taskId":I
    :sswitch_33
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getTvStackDisplayId()I

    move-result v193

    .line 834
    .restart local v193    # "displayId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    move-object/from16 v0, p3

    move/from16 v1, v193

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 840
    .end local v193    # "displayId":I
    :sswitch_34
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v274, v0

    .line 842
    .restart local v274    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v274

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedStack(I)V

    .line 843
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 848
    .end local v274    # "stackId":I
    :sswitch_35
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFocusedStackId()I

    move-result v203

    .line 850
    .local v203, "focusedStackId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    move-object/from16 v0, p3

    move/from16 v1, v203

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 856
    .end local v203    # "focusedStackId":I
    :sswitch_36
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 858
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-static/range {v73 .. v73}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 859
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 864
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_37
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 866
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    const/16 v240, 0x1

    .line 867
    .local v240, "onlyRoot":Z
    :goto_2f
    if-eqz v73, :cond_36

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v240

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    move/16 v262, v0

    .line 869
    .local v262, "res":I
    :goto_30
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    move-object/from16 v0, p3

    move/from16 v1, v262

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 866
    .end local v240    # "onlyRoot":Z
    .end local v262    # "res":I
    :cond_35
    const/16 v240, 0x0

    goto :goto_2f

    .line 867
    .restart local v240    # "onlyRoot":Z
    :cond_36
    const/4 v0, -0x1

    move/16 v262, v0

    goto :goto_30

    .line 875
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v240    # "onlyRoot":Z
    :sswitch_38
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 877
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 878
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 879
    .local v107, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 880
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_37

    const/4 v0, 0x1

    move/16 v273, v0

    .line 881
    .local v273, "stable":Z
    :goto_31
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    move/from16 v2, v17

    move/from16 v3, v273

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v189

    .line 882
    .local v189, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    if-eqz v189, :cond_38

    .line 884
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    const/4 v6, 0x0

    move-object/from16 v0, v189

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 889
    :goto_32
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 880
    .end local v189    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v273    # "stable":Z
    :cond_37
    const/4 v0, 0x0

    move/16 v273, v0

    goto :goto_31

    .line 887
    .restart local v189    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v273    # "stable":Z
    :cond_38
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 893
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v107    # "name":Ljava/lang/String;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v189    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v273    # "stable":Z
    :sswitch_39
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 895
    .restart local v107    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 896
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 897
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    move/from16 v2, v17

    move-object/from16 v3, v73

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v189

    .line 898
    .restart local v189    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    if-eqz v189, :cond_39

    .line 900
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    const/4 v6, 0x0

    move-object/from16 v0, v189

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 905
    :goto_33
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 903
    :cond_39
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    .line 909
    .end local v17    # "userId":I
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v107    # "name":Ljava/lang/String;
    .end local v189    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :sswitch_3a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 911
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 912
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v255

    .line 914
    .local v255, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v255

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 915
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 920
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v255    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :sswitch_3b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 922
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v273, v0

    .line 923
    .local v273, "stable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v287, v0

    .line 924
    .local v287, "unstable":I
    move-object/from16 v0, p0

    move-object/from16 v1, v179

    move/from16 v2, v273

    move/from16 v3, v287

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v0

    move/16 v262, v0

    .line 925
    .local v262, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    move/from16 v0, v262

    if-eqz v0, :cond_3a

    const/4 v6, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 926
    :cond_3a
    const/4 v6, 0x0

    goto :goto_34

    .line 931
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v262    # "res":Z
    .end local v273    # "stable":I
    .end local v287    # "unstable":I
    :sswitch_3c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 933
    .restart local v179    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v179

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 934
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 939
    .end local v179    # "b":Landroid/os/IBinder;
    :sswitch_3d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 941
    .restart local v179    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v179

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 942
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 947
    .end local v179    # "b":Landroid/os/IBinder;
    :sswitch_3e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 949
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b

    const/4 v0, 0x1

    move/16 v273, v0

    .line 950
    .local v273, "stable":Z
    :goto_35
    move-object/from16 v0, p0

    move-object/from16 v1, v179

    move/from16 v2, v273

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 951
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 949
    .end local v273    # "stable":Z
    :cond_3b
    const/4 v0, 0x0

    move/16 v273, v0

    goto :goto_35

    .line 956
    .end local v179    # "b":Landroid/os/IBinder;
    :sswitch_3f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 958
    .restart local v107    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 959
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 960
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 965
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v107    # "name":Ljava/lang/String;
    :sswitch_40
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v187

    check-cast v187, Landroid/content/ComponentName;

    .line 967
    .local v187, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v187

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v248

    .line 968
    .local v248, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    move-object/from16 v0, v248

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 970
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 974
    .end local v187    # "comp":Landroid/content/ComponentName;
    .end local v248    # "pi":Landroid/app/PendingIntent;
    :sswitch_41
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 975
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 976
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 977
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/Intent;

    .line 978
    .local v70, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 979
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 980
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v68, p0

    move-object/from16 v69, v7

    move-object/from16 v71, v10

    move-object/from16 v72, v8

    move/from16 v73, v17

    .line 981
    invoke-virtual/range {v68 .. v73}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v186

    .line 982
    .restart local v186    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    move-object/from16 v0, v186

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 984
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 988
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v70    # "service":Landroid/content/Intent;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v186    # "cn":Landroid/content/ComponentName;
    :sswitch_42
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 990
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 991
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/Intent;

    .line 992
    .restart local v70    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 993
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 994
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move/from16 v2, v17

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    move/16 v262, v0

    .line 995
    .local v262, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    move-object/from16 v0, p3

    move/from16 v1, v262

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1001
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v70    # "service":Landroid/content/Intent;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v262    # "res":I
    :sswitch_43
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1002
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v72

    .line 1003
    .local v72, "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1004
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v275, v0

    .line 1005
    .local v275, "startId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    move/from16 v3, v275

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v0

    move/16 v262, v0

    .line 1006
    .local v262, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    move/from16 v0, v262

    if-eqz v0, :cond_3c

    const/4 v6, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1007
    :cond_3c
    const/4 v6, 0x0

    goto :goto_36

    .line 1012
    .end local v72    # "className":Landroid/content/ComponentName;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v262    # "res":Z
    .end local v275    # "startId":I
    :sswitch_44
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1013
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v72

    .line 1014
    .restart local v72    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1015
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v74

    .line 1016
    .restart local v74    # "id":I
    const/16 v75, 0x0

    .line 1017
    .local v75, "notification":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3d

    .line 1018
    sget-object v6, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v75

    .end local v75    # "notification":Landroid/app/Notification;
    check-cast v75, Landroid/app/Notification;

    .line 1020
    .restart local v75    # "notification":Landroid/app/Notification;
    :cond_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    const/16 v76, 0x1

    .local v76, "removeNotification":Z
    :goto_37
    move-object/from16 v71, p0

    .line 1021
    invoke-virtual/range {v71 .. v76}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 1022
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1020
    .end local v76    # "removeNotification":Z
    :cond_3e
    const/16 v76, 0x0

    goto :goto_37

    .line 1027
    .end local v72    # "className":Landroid/content/ComponentName;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v74    # "id":I
    .end local v75    # "notification":Landroid/app/Notification;
    :sswitch_45
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1028
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 1029
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1030
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1031
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/Intent;

    .line 1032
    .restart local v70    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1033
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 1034
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 1035
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1036
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1037
    .restart local v17    # "userId":I
    invoke-static/range {v179 .. v179}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v82

    .local v82, "conn":Landroid/app/IServiceConnection;
    move-object/from16 v77, p0

    move-object/from16 v78, v7

    move-object/from16 v79, v73

    move-object/from16 v80, v70

    move-object/from16 v81, v10

    move-object/from16 v84, v8

    move/from16 v85, v17

    .line 1038
    invoke-virtual/range {v77 .. v85}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v0

    move/16 v262, v0

    .line 1040
    .local v262, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    move-object/from16 v0, p3

    move/from16 v1, v262

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1042
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1046
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v70    # "service":Landroid/content/Intent;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v82    # "conn":Landroid/app/IServiceConnection;
    .end local v83    # "fl":I
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v262    # "res":I
    :sswitch_46
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 1048
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v82

    .line 1049
    .restart local v82    # "conn":Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v0

    move/16 v262, v0

    .line 1050
    .local v262, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    move/from16 v0, v262

    if-eqz v0, :cond_3f

    const/4 v6, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1052
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1051
    :cond_3f
    const/4 v6, 0x0

    goto :goto_38

    .line 1056
    .end local v82    # "conn":Landroid/app/IServiceConnection;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v262    # "res":Z
    :sswitch_47
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1058
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1059
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v70

    .line 1060
    .local v70, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 1061
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1066
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v70    # "service":Landroid/os/IBinder;
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_48
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1067
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1068
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1069
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_40

    const/16 v194, 0x1

    .line 1070
    .local v194, "doRebind":Z
    :goto_39
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v194

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 1071
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1069
    .end local v194    # "doRebind":Z
    :cond_40
    const/16 v194, 0x0

    goto :goto_39

    .line 1076
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_49
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1077
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1078
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v94

    .line 1079
    .local v94, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v275, v0

    .line 1080
    .restart local v275    # "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v262, v0

    .line 1081
    .local v262, "res":I
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v94

    move/from16 v3, v275

    move/from16 v4, v262

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 1082
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1087
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v94    # "type":I
    .end local v262    # "res":I
    .end local v275    # "startId":I
    :sswitch_4a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v72

    .line 1089
    .restart local v72    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v86

    .line 1090
    .local v86, "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 1091
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v88

    .line 1092
    .local v88, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 1093
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v89

    .line 1094
    .local v89, "w":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 1095
    invoke-static/range {v179 .. v179}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v90

    .line 1096
    .local v90, "c":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1097
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v92

    .local v92, "abiOverride":Ljava/lang/String;
    move-object/from16 v84, p0

    move-object/from16 v85, v72

    move/from16 v87, v83

    move/from16 v91, v17

    .line 1098
    invoke-virtual/range {v84 .. v92}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v0

    move/16 v262, v0

    .line 1100
    .local v262, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    move/from16 v0, v262

    if-eqz v0, :cond_41

    const/4 v6, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1101
    :cond_41
    const/4 v6, 0x0

    goto :goto_3a

    .line 1107
    .end local v17    # "userId":I
    .end local v72    # "className":Landroid/content/ComponentName;
    .end local v83    # "fl":I
    .end local v86    # "profileFile":Ljava/lang/String;
    .end local v88    # "arguments":Landroid/os/Bundle;
    .end local v89    # "w":Landroid/app/IInstrumentationWatcher;
    .end local v90    # "c":Landroid/app/IUiAutomationConnection;
    .end local v92    # "abiOverride":Ljava/lang/String;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v262    # "res":Z
    :sswitch_4b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 1109
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1110
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 1111
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v266, v0

    .line 1112
    .local v266, "results":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v53

    move-object/from16 v2, v266

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 1113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1118
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v53    # "resultCode":I
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v266    # "results":Landroid/os/Bundle;
    :sswitch_4c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1119
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v39

    .line 1120
    .restart local v39    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1122
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1126
    .end local v39    # "config":Landroid/content/res/Configuration;
    :sswitch_4d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 1128
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1134
    .end local v39    # "config":Landroid/content/res/Configuration;
    :sswitch_4e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1136
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v261, v0

    .line 1137
    .local v261, "requestedOrientation":I
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v261

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 1138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1143
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v261    # "requestedOrientation":I
    :sswitch_4f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1145
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v0

    move/16 v260, v0

    .line 1146
    .local v260, "req":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    move-object/from16 v0, p3

    move/from16 v1, v260

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1148
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1152
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v260    # "req":I
    :sswitch_50
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1154
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v186

    .line 1155
    .restart local v186    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    move-object/from16 v0, v186

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1157
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1161
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v186    # "cn":Landroid/content/ComponentName;
    :sswitch_51
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1163
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1165
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1169
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_52
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v94

    .line 1171
    .restart local v94    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1172
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1173
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1174
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1177
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42

    .line 1178
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v99

    check-cast v99, [Landroid/content/Intent;

    .line 1179
    .local v99, "requestIntents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v100

    .line 1184
    .local v100, "requestResolvedTypes":[Ljava/lang/String;
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 1185
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 1187
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v93, p0

    move-object/from16 v95, v32

    move-object/from16 v96, v73

    move-object/from16 v97, v12

    move/from16 v98, v13

    move/from16 v101, v83

    move-object/from16 v102, v16

    move/from16 v103, v17

    .line 1188
    invoke-virtual/range {v93 .. v103}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v262, v0

    .line 1191
    .local v262, "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    move-object/from16 v0, v262

    if-eqz v0, :cond_44

    invoke-interface/range {v262 .. v262}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1193
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1181
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v83    # "fl":I
    .end local v99    # "requestIntents":[Landroid/content/Intent;
    .end local v100    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v262    # "res":Landroid/content/IIntentSender;
    :cond_42
    const/16 v99, 0x0

    .line 1182
    .restart local v99    # "requestIntents":[Landroid/content/Intent;
    const/16 v100, 0x0

    .restart local v100    # "requestResolvedTypes":[Ljava/lang/String;
    goto :goto_3b

    .line 1185
    .restart local v83    # "fl":I
    :cond_43
    const/16 v16, 0x0

    goto :goto_3c

    .line 1192
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    .restart local v262    # "res":Landroid/content/IIntentSender;
    :cond_44
    const/4 v6, 0x0

    goto :goto_3d

    .line 1197
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v83    # "fl":I
    .end local v94    # "type":I
    .end local v99    # "requestIntents":[Landroid/content/Intent;
    .end local v100    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v262    # "res":Landroid/content/IIntentSender;
    :sswitch_53
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v257, v0

    .line 1200
    .local v257, "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v257

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 1201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1206
    .end local v257    # "r":Landroid/content/IIntentSender;
    :sswitch_54
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v257, v0

    .line 1209
    .restart local v257    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v257

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v262, v0

    .line 1210
    .local v262, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    move-object/from16 v0, p3

    move-object/from16 v1, v262

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1212
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1216
    .end local v257    # "r":Landroid/content/IIntentSender;
    .end local v262    # "res":Ljava/lang/String;
    :sswitch_55
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v257, v0

    .line 1219
    .restart local v257    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v257

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    move/16 v262, v0

    .line 1220
    .local v262, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    move-object/from16 v0, p3

    move/from16 v1, v262

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1226
    .end local v257    # "r":Landroid/content/IIntentSender;
    .end local v262    # "res":I
    :sswitch_56
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 1228
    .restart local v42    # "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 1229
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1230
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_45

    const/16 v105, 0x1

    .line 1231
    .local v105, "allowAll":Z
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    const/16 v106, 0x1

    .line 1232
    .local v106, "requireFull":Z
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 1233
    .restart local v107    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v108

    .local v108, "callerPackage":Ljava/lang/String;
    move-object/from16 v101, p0

    move/from16 v102, v42

    move/from16 v103, v43

    move/from16 v104, v17

    .line 1234
    invoke-virtual/range {v101 .. v108}, Landroid/app/ActivityManagerNative;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    move/16 v262, v0

    .line 1236
    .restart local v262    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    move-object/from16 v0, p3

    move/from16 v1, v262

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1238
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1230
    .end local v105    # "allowAll":Z
    .end local v106    # "requireFull":Z
    .end local v107    # "name":Ljava/lang/String;
    .end local v108    # "callerPackage":Ljava/lang/String;
    .end local v262    # "res":I
    :cond_45
    const/16 v105, 0x0

    goto :goto_3e

    .line 1231
    .restart local v105    # "allowAll":Z
    :cond_46
    const/16 v106, 0x0

    goto :goto_3f

    .line 1242
    .end local v17    # "userId":I
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v105    # "allowAll":Z
    :sswitch_57
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v232

    .line 1244
    .local v232, "max":I
    move-object/from16 v0, p0

    move/from16 v1, v232

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 1245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1246
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1250
    .end local v232    # "max":I
    :sswitch_58
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1251
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v220

    .line 1252
    .local v220, "limit":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1253
    move-object/from16 v0, p3

    move/from16 v1, v220

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1258
    .end local v220    # "limit":I
    :sswitch_59
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1260
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 1261
    .local v111, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_47

    const/16 v211, 0x1

    .line 1262
    .local v211, "isForeground":Z
    :goto_40
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v111

    move/from16 v3, v211

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 1263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1261
    .end local v211    # "isForeground":Z
    :cond_47
    const/16 v211, 0x0

    goto :goto_40

    .line 1268
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v111    # "pid":I
    :sswitch_5a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1270
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 1271
    .restart local v111    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 1272
    .local v112, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v111

    move/from16 v3, v112

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    move/16 v262, v0

    .line 1273
    .restart local v262    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    move-object/from16 v0, p3

    move/from16 v1, v262

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1275
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1279
    .end local v35    # "perm":Ljava/lang/String;
    .end local v111    # "pid":I
    .end local v112    # "uid":I
    .end local v262    # "res":I
    :sswitch_5b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1281
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 1282
    .restart local v111    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 1283
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1284
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v111

    move/from16 v3, v112

    move-object/from16 v4, v73

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v0

    move/16 v262, v0

    .line 1285
    .restart local v262    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    move-object/from16 v0, p3

    move/from16 v1, v262

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1287
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1291
    .end local v35    # "perm":Ljava/lang/String;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v111    # "pid":I
    .end local v112    # "uid":I
    .end local v262    # "res":I
    :sswitch_5c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1292
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1293
    .local v110, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 1294
    .restart local v111    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 1295
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1296
    .local v113, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1297
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v115

    .local v115, "callerToken":Landroid/os/IBinder;
    move-object/from16 v109, p0

    move/from16 v114, v17

    .line 1298
    invoke-virtual/range {v109 .. v115}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0

    move/16 v262, v0

    .line 1299
    .restart local v262    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    move-object/from16 v0, p3

    move/from16 v1, v262

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1301
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1305
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v111    # "pid":I
    .end local v112    # "uid":I
    .end local v113    # "mode":I
    .end local v115    # "callerToken":Landroid/os/IBinder;
    .end local v262    # "res":I
    :sswitch_5d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1307
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v239

    .line 1309
    .local v239, "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1310
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v239

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v0

    move/16 v262, v0

    .line 1311
    .local v262, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1312
    move/from16 v0, v262

    if-eqz v0, :cond_48

    const/4 v6, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1313
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1312
    :cond_48
    const/4 v6, 0x0

    goto :goto_41

    .line 1317
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v239    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v262    # "res":Z
    :sswitch_5e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 1319
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1320
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v118

    .line 1321
    .local v118, "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1322
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1323
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v116, p0

    move-object/from16 v117, v7

    move-object/from16 v119, v110

    move/from16 v120, v113

    move/from16 v121, v17

    .line 1324
    invoke-virtual/range {v116 .. v121}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 1325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1326
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1330
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    .end local v118    # "targetPkg":Ljava/lang/String;
    .end local v179    # "b":Landroid/os/IBinder;
    :sswitch_5f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 1332
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1333
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1334
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1335
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1336
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move/from16 v2, v113

    move/from16 v3, v17

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 1337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1342
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    .end local v179    # "b":Landroid/os/IBinder;
    :sswitch_60
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1343
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1344
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1345
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1346
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move/from16 v2, v113

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->takePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1352
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    :sswitch_61
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1353
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1354
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1355
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1356
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move/from16 v2, v113

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->releasePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1358
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1362
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    :sswitch_62
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1364
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_49

    const/16 v207, 0x1

    .line 1365
    .local v207, "incoming":Z
    :goto_42
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v207

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v245

    .line 1367
    .local v245, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1368
    const/4 v6, 0x1

    move-object/from16 v0, v245

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1369
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1364
    .end local v207    # "incoming":Z
    .end local v245    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_49
    const/16 v207, 0x0

    goto :goto_42

    .line 1373
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_63
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 1375
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1376
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4a

    const/4 v0, 0x1

    move/16 v293, v0

    .line 1377
    .local v293, "waiting":Z
    :goto_43
    move-object/from16 v0, p0

    move/from16 v1, v293

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 1378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1379
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1376
    .end local v293    # "waiting":Z
    :cond_4a
    const/4 v0, 0x0

    move/16 v293, v0

    goto :goto_43

    .line 1383
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v179    # "b":Landroid/os/IBinder;
    :sswitch_64
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1384
    new-instance v235, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v235 .. v235}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1385
    .local v235, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v235

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1387
    const/4 v6, 0x0

    move-object/from16 v0, v235

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1388
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1392
    .end local v235    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :sswitch_65
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1393
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 1394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1395
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1399
    :sswitch_66
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v110

    .line 1401
    .restart local v110    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v247

    .line 1402
    .local v247, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1403
    if-eqz v247, :cond_4b

    .line 1404
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1405
    const/4 v6, 0x1

    move-object/from16 v0, v247

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1409
    :goto_44
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1407
    :cond_4b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_44

    .line 1413
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v247    # "pfd":Landroid/os/ParcelFileDescriptor;
    :sswitch_67
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4c

    const/4 v6, 0x1

    :goto_45
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->setLockScreenShown(Z)V

    .line 1415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1416
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1414
    :cond_4c
    const/4 v6, 0x0

    goto :goto_45

    .line 1420
    :sswitch_68
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v252

    .line 1422
    .local v252, "pn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4d

    const/4 v0, 0x1

    move/16 v295, v0

    .line 1423
    .local v295, "wfd":Z
    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4e

    const/16 v244, 0x1

    .line 1424
    .local v244, "per":Z
    :goto_47
    move-object/from16 v0, p0

    move-object/from16 v1, v252

    move/from16 v2, v295

    move/from16 v3, v244

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1426
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1422
    .end local v244    # "per":Z
    .end local v295    # "wfd":Z
    :cond_4d
    const/4 v0, 0x0

    move/16 v295, v0

    goto :goto_46

    .line 1423
    .restart local v295    # "wfd":Z
    :cond_4e
    const/16 v244, 0x0

    goto :goto_47

    .line 1430
    .end local v252    # "pn":Ljava/lang/String;
    .end local v295    # "wfd":Z
    :sswitch_69
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4f

    const/16 v196, 0x1

    .line 1432
    .local v196, "enabled":Z
    :goto_48
    move-object/from16 v0, p0

    move/from16 v1, v196

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1431
    .end local v196    # "enabled":Z
    :cond_4f
    const/16 v196, 0x0

    goto :goto_48

    .line 1438
    :sswitch_6a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    move-object/16 v294, v0

    .line 1441
    .local v294, "watcher":Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v294

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1443
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1447
    .end local v294    # "watcher":Landroid/app/IActivityController;
    :sswitch_6b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1448
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1454
    :sswitch_6c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v210

    .line 1457
    .local v210, "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v272, v0

    .line 1458
    .local v272, "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v271, v0

    .line 1459
    .local v271, "sourcePkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v279, v0

    .line 1460
    .local v279, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v210

    move/from16 v2, v272

    move-object/from16 v3, v271

    move-object/from16 v4, v279

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V

    .line 1461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1462
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1466
    .end local v210    # "is":Landroid/content/IIntentSender;
    .end local v271    # "sourcePkg":Ljava/lang/String;
    .end local v272    # "sourceUid":I
    .end local v279    # "tag":Ljava/lang/String;
    :sswitch_6d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v210

    .line 1469
    .restart local v210    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v272, v0

    .line 1470
    .restart local v272    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v279, v0

    .line 1471
    .restart local v279    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v210

    move/from16 v2, v272

    move-object/from16 v3, v279

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1473
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1477
    .end local v210    # "is":Landroid/content/IIntentSender;
    .end local v272    # "sourceUid":I
    .end local v279    # "tag":Ljava/lang/String;
    :sswitch_6e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v210

    .line 1480
    .restart local v210    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v272, v0

    .line 1481
    .restart local v272    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v279, v0

    .line 1482
    .restart local v279    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v210

    move/from16 v2, v272

    move-object/from16 v3, v279

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1484
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1488
    .end local v210    # "is":Landroid/content/IIntentSender;
    .end local v272    # "sourceUid":I
    .end local v279    # "tag":Ljava/lang/String;
    :sswitch_6f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v249

    .line 1490
    .local v249, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v258, v0

    .line 1491
    .local v258, "reason":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_50

    const/4 v0, 0x1

    move/16 v267, v0

    .line 1492
    .local v267, "secure":Z
    :goto_49
    move-object/from16 v0, p0

    move-object/from16 v1, v249

    move-object/from16 v2, v258

    move/from16 v3, v267

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v0

    move/16 v262, v0

    .line 1493
    .restart local v262    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1494
    move/from16 v0, v262

    if-eqz v0, :cond_51

    const/4 v6, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1495
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1491
    .end local v262    # "res":Z
    .end local v267    # "secure":Z
    :cond_50
    const/4 v0, 0x0

    move/16 v267, v0

    goto :goto_49

    .line 1494
    .restart local v262    # "res":Z
    .restart local v267    # "secure":Z
    :cond_51
    const/4 v6, 0x0

    goto :goto_4a

    .line 1499
    .end local v249    # "pids":[I
    .end local v258    # "reason":Ljava/lang/String;
    .end local v262    # "res":Z
    .end local v267    # "secure":Z
    :sswitch_70
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v258, v0

    .line 1501
    .restart local v258    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v258

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v0

    move/16 v262, v0

    .line 1502
    .restart local v262    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1503
    move/from16 v0, v262

    if-eqz v0, :cond_52

    const/4 v6, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1504
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1503
    :cond_52
    const/4 v6, 0x0

    goto :goto_4b

    .line 1508
    .end local v258    # "reason":Ljava/lang/String;
    .end local v262    # "res":Z
    :sswitch_71
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1510
    .local v7, "app":Landroid/os/IBinder;
    new-instance v185, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v185

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1511
    .local v185, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v185

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1513
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1517
    .end local v7    # "app":Landroid/os/IBinder;
    .end local v185    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :sswitch_72
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1519
    .restart local v7    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v279, v0

    .line 1520
    .restart local v279    # "tag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_53

    const/4 v0, 0x1

    move/16 v278, v0

    .line 1521
    .local v278, "system":Z
    :goto_4c
    new-instance v185, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v185

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1522
    .restart local v185    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v279

    move/from16 v2, v278

    move-object/from16 v3, v185

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v0

    move/16 v262, v0

    .line 1523
    .restart local v262    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1524
    move/from16 v0, v262

    if-eqz v0, :cond_54

    const/4 v6, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1525
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1520
    .end local v185    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v262    # "res":Z
    .end local v278    # "system":Z
    :cond_53
    const/4 v0, 0x0

    move/16 v278, v0

    goto :goto_4c

    .line 1524
    .restart local v185    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local v262    # "res":Z
    .restart local v278    # "system":Z
    :cond_54
    const/4 v6, 0x0

    goto :goto_4d

    .line 1529
    .end local v7    # "app":Landroid/os/IBinder;
    .end local v185    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v262    # "res":Z
    .end local v278    # "system":Z
    .end local v279    # "tag":Ljava/lang/String;
    :sswitch_73
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1531
    .restart local v7    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v292, v0

    .line 1532
    .local v292, "violationMask":I
    new-instance v208, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v208

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1533
    .local v208, "info":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move/from16 v1, v292

    move-object/from16 v2, v208

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1535
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1539
    .end local v7    # "app":Landroid/os/IBinder;
    .end local v208    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v292    # "violationMask":I
    :sswitch_74
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v269, v0

    .line 1541
    .local v269, "sig":I
    move-object/from16 v0, p0

    move/from16 v1, v269

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1543
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1547
    .end local v269    # "sig":I
    :sswitch_75
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1549
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1550
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1552
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1556
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_76
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1557
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1559
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1563
    :sswitch_77
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1565
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1566
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    .line 1567
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1568
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1572
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_78
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1573
    new-instance v208, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct/range {v208 .. v208}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1575
    .local v208, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v208

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1577
    const/4 v6, 0x0

    move-object/from16 v0, v208

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1578
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1582
    .end local v208    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :sswitch_79
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1583
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v39

    .line 1584
    .local v39, "config":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1585
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1586
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1590
    .end local v39    # "config":Landroid/content/pm/ConfigurationInfo;
    :sswitch_7a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v120

    .line 1592
    .local v120, "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1593
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_55

    const/16 v122, 0x1

    .line 1594
    .local v122, "start":Z
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v124

    .line 1595
    .local v124, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_56

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_4f
    move-object/from16 v119, p0

    move/from16 v121, v17

    move-object/from16 v123, v15

    .line 1597
    invoke-virtual/range {v119 .. v124}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    move/16 v262, v0

    .line 1598
    .restart local v262    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    move/from16 v0, v262

    if-eqz v0, :cond_57

    const/4 v6, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1600
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1593
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v122    # "start":Z
    .end local v124    # "profileType":I
    .end local v262    # "res":Z
    :cond_55
    const/16 v122, 0x0

    goto :goto_4e

    .line 1595
    .restart local v122    # "start":Z
    .restart local v124    # "profileType":I
    :cond_56
    const/4 v15, 0x0

    goto :goto_4f

    .line 1599
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v262    # "res":Z
    :cond_57
    const/4 v6, 0x0

    goto :goto_50

    .line 1604
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v17    # "userId":I
    .end local v120    # "process":Ljava/lang/String;
    .end local v122    # "start":Z
    .end local v124    # "profileType":I
    .end local v262    # "res":Z
    :sswitch_7b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v0

    move/16 v262, v0

    .line 1606
    .restart local v262    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1607
    move/from16 v0, v262

    if-eqz v0, :cond_58

    const/4 v6, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1608
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1607
    :cond_58
    const/4 v6, 0x0

    goto :goto_51

    .line 1612
    .end local v262    # "res":Z
    :sswitch_7c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1613
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1615
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1619
    :sswitch_7d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1620
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1622
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1626
    :sswitch_7e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1627
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/Intent;

    .line 1628
    .local v70, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1629
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1630
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1, v10, v8}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v181

    .line 1631
    .local v181, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1632
    move-object/from16 v0, p3

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1633
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1637
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v70    # "service":Landroid/content/Intent;
    .end local v181    # "binder":Landroid/os/IBinder;
    :sswitch_7f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1638
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v208

    check-cast v208, Landroid/content/pm/ApplicationInfo;

    .line 1639
    .local v208, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v180

    .line 1640
    .local v180, "backupRestoreMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v208

    move/from16 v2, v180

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v0

    move/16 v277, v0

    .line 1641
    .local v277, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1642
    move/from16 v0, v277

    if-eqz v0, :cond_59

    const/4 v6, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1643
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1642
    :cond_59
    const/4 v6, 0x0

    goto :goto_52

    .line 1647
    .end local v180    # "backupRestoreMode":I
    .end local v208    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v277    # "success":Z
    :sswitch_80
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1649
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v172

    .line 1650
    .local v172, "agent":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v172

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1651
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1652
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1656
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v172    # "agent":Landroid/os/IBinder;
    :sswitch_81
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1657
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v208

    check-cast v208, Landroid/content/pm/ApplicationInfo;

    .line 1658
    .restart local v208    # "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v208

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1659
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1660
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1664
    .end local v208    # "info":Landroid/content/pm/ApplicationInfo;
    :sswitch_82
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1666
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->addPackageDependency(Ljava/lang/String;)V

    .line 1667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1668
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1672
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_83
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v250

    .line 1674
    .local v250, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v176

    .line 1675
    .local v176, "appid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v258, v0

    .line 1676
    .restart local v258    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v250

    move/from16 v2, v176

    move-object/from16 v3, v258

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V

    .line 1677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1678
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1682
    .end local v176    # "appid":I
    .end local v250    # "pkg":Ljava/lang/String;
    .end local v258    # "reason":Ljava/lang/String;
    :sswitch_84
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v258, v0

    .line 1684
    .restart local v258    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v258

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1685
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1686
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1690
    .end local v258    # "reason":Ljava/lang/String;
    :sswitch_85
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v249

    .line 1692
    .restart local v249    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v249

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    move-object/16 v262, v0

    .line 1693
    .local v262, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1694
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v262

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1695
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1699
    .end local v249    # "pids":[I
    .end local v262    # "res":[Landroid/os/Debug$MemoryInfo;
    :sswitch_86
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v254

    .line 1701
    .local v254, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 1702
    .restart local v112    # "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v254

    move/from16 v2, v112

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1703
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1704
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1708
    .end local v112    # "uid":I
    .end local v254    # "processName":Ljava/lang/String;
    :sswitch_87
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1710
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1711
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v197

    .line 1712
    .local v197, "enterAnim":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v198

    .line 1713
    .local v198, "exitAnim":I
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v32

    move/from16 v3, v197

    move/from16 v4, v198

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1714
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1715
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1719
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v197    # "enterAnim":I
    .end local v198    # "exitAnim":I
    :sswitch_88
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1720
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v177

    .line 1721
    .local v177, "areThey":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1722
    if-eqz v177, :cond_5a

    const/4 v6, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1723
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1722
    :cond_5a
    const/4 v6, 0x0

    goto :goto_53

    .line 1727
    .end local v177    # "areThey":Z
    :sswitch_89
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_5b

    const/16 v236, 0x1

    .line 1729
    .local v236, "monkey":Z
    :goto_54
    move-object/from16 v0, p0

    move/from16 v1, v236

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    .line 1730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1731
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1728
    .end local v236    # "monkey":Z
    :cond_5b
    const/16 v236, 0x0

    goto :goto_54

    .line 1735
    :sswitch_8a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1736
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1737
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1742
    :sswitch_8b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1744
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v216

    .line 1745
    .local v216, "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1746
    if-eqz v216, :cond_5c

    const/4 v6, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1747
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1746
    :cond_5c
    const/4 v6, 0x0

    goto :goto_55

    .line 1751
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v216    # "isit":Z
    :sswitch_8c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1753
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v215

    .line 1754
    .local v215, "isTopOfTask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1755
    if-eqz v215, :cond_5d

    const/4 v6, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1756
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1755
    :cond_5d
    const/4 v6, 0x0

    goto :goto_56

    .line 1760
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v215    # "isTopOfTask":Z
    :sswitch_8d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1762
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v188

    .line 1763
    .local v188, "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1764
    if-eqz v188, :cond_5e

    const/4 v6, 0x1

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1765
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1764
    :cond_5e
    const/4 v6, 0x0

    goto :goto_57

    .line 1769
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v188    # "converted":Z
    :sswitch_8e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1772
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_5f

    .line 1773
    const/16 v182, 0x0

    .line 1777
    .local v182, "bundle":Landroid/os/Bundle;
    :goto_58
    if-nez v182, :cond_60

    const/16 v16, 0x0

    .line 1778
    .local v16, "options":Landroid/app/ActivityOptions;
    :goto_59
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    move-result v188

    .line 1779
    .restart local v188    # "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1780
    if-eqz v188, :cond_61

    const/4 v6, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1781
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1775
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v182    # "bundle":Landroid/os/Bundle;
    .end local v188    # "converted":Z
    :cond_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v182

    .restart local v182    # "bundle":Landroid/os/Bundle;
    goto :goto_58

    .line 1777
    :cond_60
    new-instance v16, Landroid/app/ActivityOptions;

    move-object/from16 v0, v16

    move-object/from16 v1, v182

    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_59

    .line 1780
    .restart local v16    # "options":Landroid/app/ActivityOptions;
    .restart local v188    # "converted":Z
    :cond_61
    const/4 v6, 0x0

    goto :goto_5a

    .line 1785
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v182    # "bundle":Landroid/os/Bundle;
    .end local v188    # "converted":Z
    :sswitch_8f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1787
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;

    move-result-object v16

    .line 1788
    .restart local v16    # "options":Landroid/app/ActivityOptions;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1789
    if-nez v16, :cond_62

    const/4 v6, 0x0

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1790
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1789
    :cond_62
    invoke-virtual/range {v16 .. v16}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_5b

    .line 1794
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_90
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1796
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_63

    const/16 v206, 0x1

    .line 1797
    .local v206, "imm":Z
    :goto_5c
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1798
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1799
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1796
    .end local v206    # "imm":Z
    :cond_63
    const/16 v206, 0x0

    goto :goto_5c

    .line 1803
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_91
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1804
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v216

    .line 1805
    .restart local v216    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1806
    if-eqz v216, :cond_64

    const/4 v6, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1807
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1806
    :cond_64
    const/4 v6, 0x0

    goto :goto_5d

    .line 1811
    .end local v216    # "isit":Z
    :sswitch_92
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 1813
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v209

    .line 1814
    .local v209, "initialPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1815
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v234

    .line 1816
    .local v234, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v112

    move/from16 v2, v209

    move-object/from16 v3, v32

    move-object/from16 v4, v234

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1817
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1818
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1822
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v112    # "uid":I
    .end local v209    # "initialPid":I
    .end local v234    # "message":Ljava/lang/String;
    :sswitch_93
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1823
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1824
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1825
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v94

    .line 1826
    .local v94, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1827
    move-object/from16 v0, p3

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1828
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1832
    .end local v17    # "userId":I
    .end local v94    # "type":Ljava/lang/String;
    .end local v110    # "uri":Landroid/net/Uri;
    :sswitch_94
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 1834
    .restart local v107    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v35

    .line 1835
    .local v35, "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1836
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1837
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1841
    .end local v35    # "perm":Landroid/os/IBinder;
    .end local v107    # "name":Ljava/lang/String;
    :sswitch_95
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v126

    .line 1843
    .local v126, "owner":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v127

    .line 1844
    .local v127, "fromUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v118

    .line 1845
    .restart local v118    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1846
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1847
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v131

    .line 1848
    .local v131, "sourceUserId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .local v132, "targetUserId":I
    move-object/from16 v125, p0

    move-object/from16 v128, v118

    move-object/from16 v129, v110

    move/from16 v130, v113

    .line 1849
    invoke-virtual/range {v125 .. v132}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 1851
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1852
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1856
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    .end local v118    # "targetPkg":Ljava/lang/String;
    .end local v126    # "owner":Landroid/os/IBinder;
    .end local v127    # "fromUid":I
    .end local v131    # "sourceUserId":I
    .end local v132    # "targetUserId":I
    :sswitch_96
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v126

    .line 1858
    .restart local v126    # "owner":Landroid/os/IBinder;
    const/16 v110, 0x0

    .line 1859
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_65

    .line 1860
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    .end local v110    # "uri":Landroid/net/Uri;
    check-cast v110, Landroid/net/Uri;

    .line 1862
    .restart local v110    # "uri":Landroid/net/Uri;
    :cond_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1863
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1864
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v126

    move-object/from16 v2, v110

    move/from16 v3, v113

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 1865
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1866
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1870
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    .end local v126    # "owner":Landroid/os/IBinder;
    :sswitch_97
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 1872
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v118

    .line 1873
    .restart local v118    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1874
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v137

    .line 1875
    .local v137, "modeFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v133, p0

    move/from16 v134, v43

    move-object/from16 v135, v118

    move-object/from16 v136, v110

    move/from16 v138, v17

    .line 1876
    invoke-virtual/range {v133 .. v138}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    move/16 v262, v0

    .line 1877
    .local v262, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1878
    move-object/from16 v0, p3

    move/from16 v1, v262

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1879
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1883
    .end local v17    # "userId":I
    .end local v43    # "callingUid":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v118    # "targetPkg":Ljava/lang/String;
    .end local v137    # "modeFlags":I
    .end local v262    # "res":I
    :sswitch_98
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1884
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v120

    .line 1885
    .restart local v120    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1886
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_66

    const/16 v141, 0x1

    .line 1887
    .local v141, "managed":Z
    :goto_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v142

    .line 1888
    .local v142, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_67

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v143, v6

    .local v143, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_5f
    move-object/from16 v138, p0

    move-object/from16 v139, v120

    move/from16 v140, v17

    .line 1890
    invoke-virtual/range {v138 .. v143}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    move/16 v262, v0

    .line 1891
    .local v262, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1892
    move/from16 v0, v262

    if-eqz v0, :cond_68

    const/4 v6, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1893
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1886
    .end local v141    # "managed":Z
    .end local v142    # "path":Ljava/lang/String;
    .end local v143    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v262    # "res":Z
    :cond_66
    const/16 v141, 0x0

    goto :goto_5e

    .line 1888
    .restart local v141    # "managed":Z
    .restart local v142    # "path":Ljava/lang/String;
    :cond_67
    const/16 v143, 0x0

    goto :goto_5f

    .line 1892
    .restart local v143    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v262    # "res":Z
    :cond_68
    const/4 v6, 0x0

    goto :goto_60

    .line 1898
    .end local v17    # "userId":I
    .end local v120    # "process":Ljava/lang/String;
    .end local v141    # "managed":Z
    .end local v142    # "path":Ljava/lang/String;
    .end local v143    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v262    # "res":Z
    :sswitch_99
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1899
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 1900
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1901
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1902
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v147

    check-cast v147, [Landroid/content/Intent;

    .line 1903
    .local v147, "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v148

    .line 1904
    .local v148, "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1905
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_69

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 1907
    .local v16, "options":Landroid/os/Bundle;
    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v144, p0

    move-object/from16 v145, v7

    move-object/from16 v146, v8

    move-object/from16 v149, v11

    move-object/from16 v150, v16

    move/from16 v151, v17

    .line 1908
    invoke-virtual/range {v144 .. v151}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v265, v0

    .line 1910
    .restart local v265    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1911
    move-object/from16 v0, p3

    move/from16 v1, v265

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1912
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1905
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v265    # "result":I
    :cond_69
    const/16 v16, 0x0

    goto :goto_61

    .line 1917
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v147    # "intents":[Landroid/content/Intent;
    .end local v148    # "resolvedTypes":[Ljava/lang/String;
    .end local v179    # "b":Landroid/os/IBinder;
    :sswitch_9a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1918
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v113

    .line 1919
    .restart local v113    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1920
    move-object/from16 v0, p3

    move/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1921
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1926
    .end local v113    # "mode":I
    :sswitch_9b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1928
    .restart local v113    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 1929
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1930
    move-object/from16 v0, p3

    move/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1931
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1936
    .end local v113    # "mode":I
    :sswitch_9c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1937
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v250

    .line 1938
    .restart local v250    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v250

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v113

    .line 1939
    .restart local v113    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1940
    move-object/from16 v0, p3

    move/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1941
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1946
    .end local v113    # "mode":I
    .end local v250    # "pkg":Ljava/lang/String;
    :sswitch_9d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v250

    .line 1948
    .restart local v250    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1949
    .restart local v113    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v250

    move/from16 v2, v113

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1950
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1951
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1955
    .end local v113    # "mode":I
    .end local v250    # "pkg":Ljava/lang/String;
    :sswitch_9e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1956
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v289, v0

    .line 1957
    .local v289, "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v289

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v0

    move/16 v265, v0

    .line 1958
    .local v265, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1959
    move/from16 v0, v265

    if-eqz v0, :cond_6a

    const/4 v6, 0x1

    :goto_62
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1960
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1959
    :cond_6a
    const/4 v6, 0x0

    goto :goto_62

    .line 1964
    .end local v265    # "result":Z
    .end local v289    # "userid":I
    :sswitch_9f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v289, v0

    .line 1966
    .restart local v289    # "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v289

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startUserInBackground(I)Z

    move-result v0

    move/16 v265, v0

    .line 1967
    .restart local v265    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1968
    move/from16 v0, v265

    if-eqz v0, :cond_6b

    const/4 v6, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1969
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1968
    :cond_6b
    const/4 v6, 0x0

    goto :goto_63

    .line 1973
    .end local v265    # "result":Z
    .end local v289    # "userid":I
    :sswitch_a0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1974
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v289, v0

    .line 1975
    .restart local v289    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v183

    .line 1977
    .local v183, "callback":Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    move/from16 v1, v289

    move-object/from16 v2, v183

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->stopUser(ILandroid/app/IStopUserCallback;)I

    move-result v0

    move/16 v265, v0

    .line 1978
    .local v265, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1979
    move-object/from16 v0, p3

    move/from16 v1, v265

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1980
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1984
    .end local v183    # "callback":Landroid/app/IStopUserCallback;
    .end local v265    # "result":I
    .end local v289    # "userid":I
    :sswitch_a1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1985
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUserIdNoLock()I

    move-result v17

    .line 1986
    .restart local v17    # "userId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1987
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1988
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1992
    .end local v17    # "userId":I
    :sswitch_a2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1993
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    move-object/16 v288, v0

    .line 1994
    .local v288, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1995
    const/4 v6, 0x0

    move-object/from16 v0, v288

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1996
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2000
    .end local v288    # "userInfo":Landroid/content/pm/UserInfo;
    :sswitch_a3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2001
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v289, v0

    .line 2002
    .restart local v289    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6c

    const/16 v241, 0x1

    .line 2003
    .local v241, "orStopping":Z
    :goto_64
    move-object/from16 v0, p0

    move/from16 v1, v289

    move/from16 v2, v241

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(IZ)Z

    move-result v0

    move/16 v265, v0

    .line 2004
    .local v265, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2005
    move/from16 v0, v265

    if-eqz v0, :cond_6d

    const/4 v6, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2006
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2002
    .end local v241    # "orStopping":Z
    .end local v265    # "result":Z
    :cond_6c
    const/16 v241, 0x0

    goto :goto_64

    .line 2005
    .restart local v241    # "orStopping":Z
    .restart local v265    # "result":Z
    :cond_6d
    const/4 v6, 0x0

    goto :goto_65

    .line 2010
    .end local v241    # "orStopping":Z
    .end local v265    # "result":Z
    .end local v289    # "userid":I
    :sswitch_a4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2011
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    move-result-object v0

    move-object/16 v265, v0

    .line 2012
    .local v265, "result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2013
    move-object/from16 v0, p3

    move-object/from16 v1, v265

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2014
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2019
    .end local v265    # "result":[I
    :sswitch_a5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2020
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v282, v0

    .line 2021
    .restart local v282    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v282

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeTask(I)Z

    move-result v0

    move/16 v265, v0

    .line 2022
    .local v265, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2023
    move/from16 v0, v265

    if-eqz v0, :cond_6e

    const/4 v6, 0x1

    :goto_66
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2024
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2023
    :cond_6e
    const/4 v6, 0x0

    goto :goto_66

    .line 2030
    .end local v265    # "result":Z
    .end local v282    # "taskId":I
    :sswitch_a6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2031
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v282, v0

    .line 2032
    .restart local v282    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v202

    .line 2033
    .local v202, "flag":I
    move-object/from16 v0, p0

    move/from16 v1, v282

    move/from16 v2, v202

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeTask(II)Z

    move-result v0

    move/16 v265, v0

    .line 2034
    .restart local v265    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2035
    move/from16 v0, v265

    if-eqz v0, :cond_6f

    const/4 v6, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2036
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2035
    :cond_6f
    const/4 v6, 0x0

    goto :goto_67

    .line 2041
    .end local v202    # "flag":I
    .end local v265    # "result":Z
    .end local v282    # "taskId":I
    :sswitch_a7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2042
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v239

    .line 2044
    .local v239, "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2045
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2049
    .end local v239    # "observer":Landroid/app/IProcessObserver;
    :sswitch_a8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v239

    .line 2052
    .restart local v239    # "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2053
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2057
    .end local v239    # "observer":Landroid/app/IProcessObserver;
    :sswitch_a9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2058
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v239

    .line 2060
    .local v239, "observer":Landroid/app/IUidObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUidObserver(Landroid/app/IUidObserver;)V

    .line 2061
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2065
    .end local v239    # "observer":Landroid/app/IUidObserver;
    :sswitch_aa
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2066
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v239

    .line 2068
    .restart local v239    # "observer":Landroid/app/IUidObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 2069
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2074
    .end local v239    # "observer":Landroid/app/IUidObserver;
    :sswitch_ab
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v250

    .line 2076
    .restart local v250    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v250

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v178

    .line 2077
    .local v178, "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2078
    if-eqz v178, :cond_70

    const/4 v6, 0x1

    :goto_68
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2079
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2078
    :cond_70
    const/4 v6, 0x0

    goto :goto_68

    .line 2084
    .end local v178    # "ask":Z
    .end local v250    # "pkg":Ljava/lang/String;
    :sswitch_ac
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2085
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v250

    .line 2086
    .restart local v250    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_71

    const/16 v178, 0x1

    .line 2087
    .restart local v178    # "ask":Z
    :goto_69
    move-object/from16 v0, p0

    move-object/from16 v1, v250

    move/from16 v2, v178

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 2088
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2089
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2086
    .end local v178    # "ask":Z
    :cond_71
    const/16 v178, 0x0

    goto :goto_69

    .line 2093
    .end local v250    # "pkg":Ljava/lang/String;
    :sswitch_ad
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v257, v0

    .line 2096
    .restart local v257    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v257

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v262, v0

    .line 2097
    .restart local v262    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2098
    move/from16 v0, v262

    if-eqz v0, :cond_72

    const/4 v6, 0x1

    :goto_6a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2099
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2098
    :cond_72
    const/4 v6, 0x0

    goto :goto_6a

    .line 2103
    .end local v257    # "r":Landroid/content/IIntentSender;
    .end local v262    # "res":Z
    :sswitch_ae
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v257, v0

    .line 2106
    .restart local v257    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v257

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v262, v0

    .line 2107
    .restart local v262    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2108
    move/from16 v0, v262

    if-eqz v0, :cond_73

    const/4 v6, 0x1

    :goto_6b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2109
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2108
    :cond_73
    const/4 v6, 0x0

    goto :goto_6b

    .line 2113
    .end local v257    # "r":Landroid/content/IIntentSender;
    .end local v262    # "res":Z
    :sswitch_af
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v257, v0

    .line 2116
    .restart local v257    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v257

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v9

    .line 2117
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2118
    if-eqz v9, :cond_74

    .line 2119
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2120
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2124
    :goto_6c
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2122
    :cond_74
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6c

    .line 2128
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v257    # "r":Landroid/content/IIntentSender;
    :sswitch_b0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v257, v0

    .line 2131
    .restart local v257    # "r":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v253

    .line 2132
    .local v253, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v257

    move-object/from16 v2, v253

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v279, v0

    .line 2133
    .restart local v279    # "tag":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2134
    move-object/from16 v0, p3

    move-object/from16 v1, v279

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2135
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2139
    .end local v253    # "prefix":Ljava/lang/String;
    .end local v257    # "r":Landroid/content/IIntentSender;
    .end local v279    # "tag":Ljava/lang/String;
    :sswitch_b1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2140
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 2141
    .local v39, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 2142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2143
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2147
    .end local v39    # "config":Landroid/content/res/Configuration;
    :sswitch_b2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v249

    .line 2149
    .restart local v249    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v249

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v0

    move-object/16 v256, v0

    .line 2150
    .local v256, "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2151
    move-object/from16 v0, p3

    move-object/from16 v1, v256

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2152
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2156
    .end local v249    # "pids":[I
    .end local v256    # "pss":[J
    :sswitch_b3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2157
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v237

    check-cast v237, Ljava/lang/CharSequence;

    .line 2158
    .local v237, "msg":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_75

    const/16 v174, 0x1

    .line 2159
    .local v174, "always":Z
    :goto_6d
    move-object/from16 v0, p0

    move-object/from16 v1, v237

    move/from16 v2, v174

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 2160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2161
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2158
    .end local v174    # "always":Z
    :cond_75
    const/16 v174, 0x0

    goto :goto_6d

    .line 2165
    .end local v237    # "msg":Ljava/lang/CharSequence;
    :sswitch_b4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2166
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->keyguardWaitingForActivityDrawn()V

    .line 2167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2168
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2172
    :sswitch_b5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_76

    const/4 v6, 0x1

    :goto_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_77

    const/16 v18, 0x1

    :goto_6f
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->keyguardGoingAway(ZZ)V

    .line 2174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2175
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2173
    :cond_76
    const/4 v6, 0x0

    goto :goto_6e

    :cond_77
    const/16 v18, 0x0

    goto :goto_6f

    .line 2179
    :sswitch_b6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2181
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v192

    .line 2182
    .local v192, "destAffinity":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v192

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    move/16 v262, v0

    .line 2183
    .restart local v262    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2184
    move/from16 v0, v262

    if-eqz v0, :cond_78

    const/4 v6, 0x1

    :goto_70
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2185
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2184
    :cond_78
    const/4 v6, 0x0

    goto :goto_70

    .line 2189
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v192    # "destAffinity":Ljava/lang/String;
    .end local v262    # "res":Z
    :sswitch_b7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2191
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v280, v0

    move-object/from16 v0, v280

    check-cast v0, Landroid/content/Intent;

    move-object/16 v280, v0

    .line 2192
    .local v280, "target":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 2193
    .restart local v53    # "resultCode":I
    const/16 v54, 0x0

    .line 2194
    .local v54, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_79

    .line 2195
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    .end local v54    # "resultData":Landroid/content/Intent;
    check-cast v54, Landroid/content/Intent;

    .line 2197
    .restart local v54    # "resultData":Landroid/content/Intent;
    :cond_79
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v280

    move/from16 v3, v53

    move-object/from16 v4, v54

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v0

    move/16 v262, v0

    .line 2198
    .restart local v262    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2199
    move/from16 v0, v262

    if-eqz v0, :cond_7a

    const/4 v6, 0x1

    :goto_71
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2200
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2199
    :cond_7a
    const/4 v6, 0x0

    goto :goto_71

    .line 2204
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Landroid/content/Intent;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v262    # "res":Z
    .end local v280    # "target":Landroid/content/Intent;
    :sswitch_b8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2206
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    move/16 v262, v0

    .line 2207
    .local v262, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2208
    move-object/from16 v0, p3

    move/from16 v1, v262

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2209
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2213
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v262    # "res":I
    :sswitch_b9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2215
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v262, v0

    .line 2216
    .local v262, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2217
    move-object/from16 v0, p3

    move-object/from16 v1, v262

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2218
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2222
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v262    # "res":Ljava/lang/String;
    :sswitch_ba
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v239

    .line 2225
    .local v239, "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2227
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2231
    .end local v239    # "observer":Landroid/app/IUserSwitchObserver;
    :sswitch_bb
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v239

    .line 2234
    .restart local v239    # "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2236
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2240
    .end local v239    # "observer":Landroid/app/IUserSwitchObserver;
    :sswitch_bc
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2241
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->requestBugReport()V

    .line 2242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2243
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2247
    :sswitch_bd
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 2249
    .restart local v111    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7b

    const/16 v168, 0x1

    .line 2250
    .local v168, "aboveSystem":Z
    :goto_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v258, v0

    .line 2251
    .restart local v258    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v111

    move/from16 v2, v168

    move-object/from16 v3, v258

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v0

    move-wide/16 v262, v0

    .line 2252
    .local v262, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2253
    move-object/from16 v0, p3

    move-wide/from16 v1, v262

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2254
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2249
    .end local v168    # "aboveSystem":Z
    .end local v258    # "reason":Ljava/lang/String;
    .end local v262    # "res":J
    :cond_7b
    const/16 v168, 0x0

    goto :goto_72

    .line 2258
    .end local v111    # "pid":I
    :sswitch_be
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v157

    .line 2260
    .local v157, "requestType":I
    move-object/from16 v0, p0

    move/from16 v1, v157

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v262, v0

    .line 2261
    .local v262, "res":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2262
    move-object/from16 v0, p3

    move-object/from16 v1, v262

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2263
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2267
    .end local v157    # "requestType":I
    .end local v262    # "res":Landroid/os/Bundle;
    :sswitch_bf
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v157

    .line 2269
    .restart local v157    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    move-object/16 v259, v0

    .line 2270
    .local v259, "receiver":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v171

    .line 2271
    .restart local v171    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move/from16 v1, v157

    move-object/from16 v2, v259

    move-object/from16 v3, v171

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/IBinder;)Z

    move-result v0

    move/16 v262, v0

    .line 2272
    .local v262, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2273
    move/from16 v0, v262

    if-eqz v0, :cond_7c

    const/4 v6, 0x1

    :goto_73
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2274
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2273
    :cond_7c
    const/4 v6, 0x0

    goto :goto_73

    .line 2278
    .end local v157    # "requestType":I
    .end local v171    # "activityToken":Landroid/os/IBinder;
    .end local v259    # "receiver":Lcom/android/internal/os/IResultReceiver;
    .end local v262    # "res":Z
    :sswitch_c0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2280
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v151

    .line 2281
    .local v151, "extras":Landroid/os/Bundle;
    sget-object v6, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v152

    check-cast v152, Landroid/app/assist/AssistStructure;

    .line 2282
    .local v152, "structure":Landroid/app/assist/AssistStructure;
    sget-object v6, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v153

    check-cast v153, Landroid/app/assist/AssistContent;

    .line 2283
    .local v153, "content":Landroid/app/assist/AssistContent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7d

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    move-object/from16 v154, v6

    .local v154, "referrer":Landroid/net/Uri;
    :goto_74
    move-object/from16 v149, p0

    move-object/from16 v150, v73

    .line 2284
    invoke-virtual/range {v149 .. v154}, Landroid/app/ActivityManagerNative;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    .line 2285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2286
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2283
    .end local v154    # "referrer":Landroid/net/Uri;
    :cond_7d
    const/16 v154, 0x0

    goto :goto_74

    .line 2290
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v151    # "extras":Landroid/os/Bundle;
    .end local v152    # "structure":Landroid/app/assist/AssistStructure;
    .end local v153    # "content":Landroid/app/assist/AssistContent;
    :sswitch_c1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2291
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 2292
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v157

    .line 2293
    .restart local v157    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v158

    .line 2294
    .local v158, "hint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v159

    .line 2295
    .local v159, "userHandle":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v160

    .local v160, "args":Landroid/os/Bundle;
    move-object/from16 v155, p0

    move-object/from16 v156, v9

    .line 2296
    invoke-virtual/range {v155 .. v160}, Landroid/app/ActivityManagerNative;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    move-result v0

    move/16 v262, v0

    .line 2297
    .restart local v262    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2298
    move/from16 v0, v262

    if-eqz v0, :cond_7e

    const/4 v6, 0x1

    :goto_75
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2299
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2298
    :cond_7e
    const/4 v6, 0x0

    goto :goto_75

    .line 2303
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v157    # "requestType":I
    .end local v158    # "hint":Ljava/lang/String;
    .end local v159    # "userHandle":I
    .end local v160    # "args":Landroid/os/Bundle;
    .end local v262    # "res":Z
    :sswitch_c2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2304
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0

    move/16 v262, v0

    .line 2305
    .restart local v262    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2306
    move/from16 v0, v262

    if-eqz v0, :cond_7f

    const/4 v6, 0x1

    :goto_76
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2307
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2306
    :cond_7f
    const/4 v6, 0x0

    goto :goto_76

    .line 2311
    .end local v262    # "res":Z
    :sswitch_c3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2313
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v160

    .line 2314
    .restart local v160    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v160

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v262, v0

    .line 2315
    .restart local v262    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2316
    move/from16 v0, v262

    if-eqz v0, :cond_80

    const/4 v6, 0x1

    :goto_77
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2317
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2316
    :cond_80
    const/4 v6, 0x0

    goto :goto_77

    .line 2321
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v160    # "args":Landroid/os/Bundle;
    .end local v262    # "res":Z
    :sswitch_c4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v175

    .line 2323
    .local v175, "appId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2324
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v258, v0

    .line 2325
    .restart local v258    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v175

    move/from16 v2, v17

    move-object/from16 v3, v258

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killUid(IILjava/lang/String;)V

    .line 2326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2327
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2331
    .end local v17    # "userId":I
    .end local v175    # "appId":I
    .end local v258    # "reason":Ljava/lang/String;
    :sswitch_c5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 2333
    .restart local v62    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_81

    const/16 v173, 0x1

    .line 2334
    .local v173, "allowRestart":Z
    :goto_78
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move/from16 v2, v173

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    .line 2335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2336
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2333
    .end local v173    # "allowRestart":Z
    :cond_81
    const/16 v173, 0x0

    goto :goto_78

    .line 2340
    .end local v62    # "who":Landroid/os/IBinder;
    :sswitch_c6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2342
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->reportActivityFullyDrawn(Landroid/os/IBinder;)V

    .line 2343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2344
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2348
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_c7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2350
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyActivityDrawn(Landroid/os/IBinder;)V

    .line 2351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2352
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2356
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_c8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2357
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restart()V

    .line 2358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2359
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2365
    :sswitch_c9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;

    move-result-object v239

    .line 2370
    .local v239, "observer":Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerSystemCollectorListener(Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;)V

    .line 2371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2372
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2376
    .end local v239    # "observer":Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;
    :sswitch_ca
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v169

    .line 2379
    .local v169, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v218

    .line 2380
    .local v218, "label":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v290, v0

    .line 2381
    .local v290, "value":I
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v229

    check-cast v229, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    .line 2384
    .local v229, "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    move-object/from16 v0, p0

    move-object/from16 v1, v169

    move-object/from16 v2, v218

    move/from16 v3, v290

    move-object/from16 v4, v229

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V

    .line 2385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2386
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2393
    .end local v169    # "action":Ljava/lang/String;
    .end local v218    # "label":Ljava/lang/String;
    .end local v229    # "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    .end local v290    # "value":I
    :sswitch_cb
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2394
    const/4 v0, 0x0

    move-object/16 v286, v0

    .line 2395
    .local v286, "transform":Landroid/view/animation/LenovoTransformation;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_82

    .line 2396
    sget-object v6, Landroid/view/animation/LenovoTransformation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v286, v0

    .end local v286    # "transform":Landroid/view/animation/LenovoTransformation;
    move-object/from16 v0, v286

    check-cast v0, Landroid/view/animation/LenovoTransformation;

    move-object/16 v286, v0

    .line 2398
    .restart local v286    # "transform":Landroid/view/animation/LenovoTransformation;
    :cond_82
    move-object/from16 v0, p0

    move-object/from16 v1, v286

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setLenovoGlobalTransform(Landroid/view/animation/LenovoTransformation;)V

    .line 2399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2400
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2403
    .end local v286    # "transform":Landroid/view/animation/LenovoTransformation;
    :sswitch_cc
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2404
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getLenovoGlobalTransform()Landroid/view/animation/LenovoTransformation;

    move-result-object v0

    move-object/16 v286, v0

    .line 2405
    .restart local v286    # "transform":Landroid/view/animation/LenovoTransformation;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2406
    move-object/from16 v0, v286

    if-nez v0, :cond_83

    .line 2407
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2413
    :goto_79
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2409
    :cond_83
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2410
    const/4 v6, 0x0

    move-object/from16 v0, v286

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/view/animation/LenovoTransformation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_79

    .line 2418
    .end local v286    # "transform":Landroid/view/animation/LenovoTransformation;
    :sswitch_cd
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2419
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->performIdleMaintenance()V

    .line 2420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2421
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2425
    :sswitch_ce
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v243

    .line 2427
    .local v243, "parentActivityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainerCallback;

    move-result-object v183

    .line 2429
    .local v183, "callback":Landroid/app/IActivityContainerCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v243

    move-object/from16 v2, v183

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    move-result-object v170

    .line 2431
    .local v170, "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2432
    if-eqz v170, :cond_84

    .line 2433
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2434
    invoke-interface/range {v170 .. v170}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2438
    :goto_7a
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2436
    :cond_84
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7a

    .line 2442
    .end local v170    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v183    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v243    # "parentActivityToken":Landroid/os/IBinder;
    :sswitch_cf
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    move-result-object v170

    .line 2445
    .restart local v170    # "activityContainer":Landroid/app/IActivityContainer;
    move-object/from16 v0, p0

    move-object/from16 v1, v170

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    .line 2446
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2447
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2451
    .end local v170    # "activityContainer":Landroid/app/IActivityContainer;
    :sswitch_d0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v193

    .line 2453
    .restart local v193    # "displayId":I
    move-object/from16 v0, p0

    move/from16 v1, v193

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->createStackOnDisplay(I)Landroid/app/IActivityContainer;

    move-result-object v170

    .line 2454
    .restart local v170    # "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2455
    if-eqz v170, :cond_85

    .line 2456
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2457
    invoke-interface/range {v170 .. v170}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2461
    :goto_7b
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2459
    :cond_85
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7b

    .line 2465
    .end local v170    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v193    # "displayId":I
    :sswitch_d1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v171

    .line 2467
    .restart local v171    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v171

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v193

    .line 2468
    .restart local v193    # "displayId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2469
    move-object/from16 v0, p3

    move/from16 v1, v193

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2470
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2474
    .end local v171    # "activityToken":Landroid/os/IBinder;
    .end local v193    # "displayId":I
    :sswitch_d2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v282, v0

    .line 2476
    .restart local v282    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v282

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(I)V

    .line 2477
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2478
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2482
    .end local v282    # "taskId":I
    :sswitch_d3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2484
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(Landroid/os/IBinder;)V

    .line 2485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2486
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2490
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_d4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2491
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->startLockTaskModeOnCurrent()V

    .line 2492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2493
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2497
    :sswitch_d5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2498
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskMode()V

    .line 2499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2500
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2504
    :sswitch_d6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2505
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskModeOnCurrent()V

    .line 2506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2507
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2511
    :sswitch_d7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2512
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isInLockTaskMode()Z

    move-result v213

    .line 2513
    .local v213, "isInLockTaskMode":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2514
    if-eqz v213, :cond_86

    const/4 v6, 0x1

    :goto_7c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2515
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2514
    :cond_86
    const/4 v6, 0x0

    goto :goto_7c

    .line 2519
    .end local v213    # "isInLockTaskMode":Z
    :sswitch_d8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2520
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getLockTaskModeState()I

    move-result v230

    .line 2521
    .local v230, "lockTaskModeState":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2522
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2523
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2527
    .end local v230    # "lockTaskModeState":I
    :sswitch_d9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2529
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 2530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2531
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2535
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_da
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2537
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v291, v0

    move-object/from16 v0, v291

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    move-object/16 v291, v0

    .line 2539
    .local v291, "values":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v291

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 2540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2541
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2545
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v291    # "values":Landroid/app/ActivityManager$TaskDescription;
    :sswitch_db
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v282, v0

    .line 2547
    .restart local v282    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_87

    const/4 v0, 0x1

    move/16 v264, v0

    .line 2548
    .local v264, "resizeable":Z
    :goto_7d
    move-object/from16 v0, p0

    move/from16 v1, v282

    move/from16 v2, v264

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskResizeable(IZ)V

    .line 2549
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2550
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2547
    .end local v264    # "resizeable":Z
    :cond_87
    const/4 v0, 0x0

    move/16 v264, v0

    goto :goto_7d

    .line 2554
    .end local v282    # "taskId":I
    :sswitch_dc
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v282, v0

    .line 2556
    .restart local v282    # "taskId":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v257, v0

    move-object/from16 v0, v257

    check-cast v0, Landroid/graphics/Rect;

    move-object/16 v257, v0

    .line 2557
    .local v257, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v282

    move-object/from16 v2, v257

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizeTask(ILandroid/graphics/Rect;)V

    .line 2558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2559
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2563
    .end local v257    # "r":Landroid/graphics/Rect;
    .end local v282    # "taskId":I
    :sswitch_dd
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v199

    .line 2565
    .local v199, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v199

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v205

    .line 2566
    .local v205, "icon":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2567
    if-nez v205, :cond_88

    .line 2568
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2573
    :goto_7e
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2570
    :cond_88
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2571
    const/4 v6, 0x0

    move-object/from16 v0, v205

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7e

    .line 2577
    .end local v199    # "filename":Ljava/lang/String;
    .end local v205    # "icon":Landroid/graphics/Bitmap;
    :sswitch_de
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_89

    .line 2580
    const/16 v182, 0x0

    .line 2584
    .restart local v182    # "bundle":Landroid/os/Bundle;
    :goto_7f
    if-nez v182, :cond_8a

    const/16 v16, 0x0

    .line 2585
    .local v16, "options":Landroid/app/ActivityOptions;
    :goto_80
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 2586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2587
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2582
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v182    # "bundle":Landroid/os/Bundle;
    :cond_89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v182

    .restart local v182    # "bundle":Landroid/os/Bundle;
    goto :goto_7f

    .line 2584
    :cond_8a
    new-instance v16, Landroid/app/ActivityOptions;

    move-object/from16 v0, v16

    move-object/from16 v1, v182

    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_80

    .line 2591
    .end local v182    # "bundle":Landroid/os/Bundle;
    :sswitch_df
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2593
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-lez v6, :cond_8b

    const/16 v195, 0x1

    .line 2594
    .local v195, "enable":Z
    :goto_81
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v195

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v277, v0

    .line 2595
    .restart local v277    # "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2596
    move/from16 v0, v277

    if-eqz v0, :cond_8c

    const/4 v6, 0x1

    :goto_82
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2597
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2593
    .end local v195    # "enable":Z
    .end local v277    # "success":Z
    :cond_8b
    const/16 v195, 0x0

    goto :goto_81

    .line 2596
    .restart local v195    # "enable":Z
    .restart local v277    # "success":Z
    :cond_8c
    const/4 v6, 0x0

    goto :goto_82

    .line 2601
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v195    # "enable":Z
    .end local v277    # "success":Z
    :sswitch_e0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2603
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z

    move-result v196

    .line 2604
    .restart local v196    # "enabled":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2605
    if-eqz v196, :cond_8d

    const/4 v6, 0x1

    :goto_83
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2606
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2605
    :cond_8d
    const/4 v6, 0x0

    goto :goto_83

    .line 2610
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v196    # "enabled":Z
    :sswitch_e1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2612
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->backgroundResourcesReleased(Landroid/os/IBinder;)V

    .line 2613
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2614
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2618
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_e2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2620
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 2621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2622
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2626
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_e3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2628
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 2629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2630
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2634
    .end local v73    # "token":Landroid/os/IBinder;
    :sswitch_e4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2635
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->bootAnimationComplete()V

    .line 2636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2637
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2641
    :sswitch_e5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 2643
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v201

    .line 2644
    .local v201, "firstPacket":[B
    move-object/from16 v0, p0

    move/from16 v1, v112

    move-object/from16 v2, v201

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->notifyCleartextNetwork(I[B)V

    .line 2645
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2646
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2650
    .end local v112    # "uid":I
    .end local v201    # "firstPacket":[B
    :sswitch_e6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v162

    .line 2652
    .local v162, "procName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 2653
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v164

    .line 2654
    .local v164, "maxMemSize":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v166

    .local v166, "reportPackage":Ljava/lang/String;
    move-object/from16 v161, p0

    move/from16 v163, v112

    .line 2655
    invoke-virtual/range {v161 .. v166}, Landroid/app/ActivityManagerNative;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 2656
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2657
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2661
    .end local v112    # "uid":I
    .end local v162    # "procName":Ljava/lang/String;
    .end local v164    # "maxMemSize":J
    .end local v166    # "reportPackage":Ljava/lang/String;
    :sswitch_e7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v142

    .line 2663
    .restart local v142    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->dumpHeapFinished(Ljava/lang/String;)V

    .line 2664
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2665
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2669
    .end local v142    # "path":Ljava/lang/String;
    :sswitch_e8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 2672
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8e

    const/16 v217, 0x1

    .line 2673
    .local v217, "keepAwake":Z
    :goto_84
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v217

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 2674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2675
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2672
    .end local v217    # "keepAwake":Z
    :cond_8e
    const/16 v217, 0x0

    goto :goto_84

    .line 2679
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :sswitch_e9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2681
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v242

    .line 2682
    .local v242, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v242

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 2683
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2684
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2688
    .end local v17    # "userId":I
    .end local v242    # "packages":[Ljava/lang/String;
    :sswitch_ea
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 2690
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateDeviceOwner(Ljava/lang/String;)V

    .line 2691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2692
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2696
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_eb
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v250

    .line 2698
    .restart local v250    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2699
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v250

    invoke-virtual {v0, v1, v8}, Landroid/app/ActivityManagerNative;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move/16 v262, v0

    .line 2700
    .local v262, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2701
    move-object/from16 v0, p3

    move/from16 v1, v262

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2702
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2706
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v250    # "pkg":Ljava/lang/String;
    .end local v262    # "res":I
    :sswitch_ec
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v120

    .line 2708
    .restart local v120    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2709
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v219

    .line 2710
    .local v219, "level":I
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move/from16 v2, v17

    move/from16 v3, v219

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v0

    move/16 v262, v0

    .line 2711
    .local v262, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2712
    move/from16 v0, v262

    if-eqz v0, :cond_8f

    const/4 v6, 0x1

    :goto_85
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2713
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2712
    :cond_8f
    const/4 v6, 0x0

    goto :goto_85

    .line 2717
    .end local v17    # "userId":I
    .end local v120    # "process":Ljava/lang/String;
    .end local v219    # "level":I
    .end local v262    # "res":Z
    :sswitch_ed
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2719
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v262, v0

    .line 2720
    .restart local v262    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2721
    move/from16 v0, v262

    if-eqz v0, :cond_90

    const/4 v6, 0x1

    :goto_86
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2722
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2721
    :cond_90
    const/4 v6, 0x0

    goto :goto_86

    .line 2729
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v262    # "res":Z
    :sswitch_ee
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v251

    .line 2731
    .local v251, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_91

    const/4 v0, 0x1

    move/16 v268, v0

    .line 2732
    .local v268, "set":Z
    :goto_87
    move-object/from16 v0, p0

    move-object/from16 v1, v251

    move/from16 v2, v268

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPersistentForce(Ljava/lang/String;Z)V

    .line 2733
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2734
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2731
    .end local v268    # "set":Z
    :cond_91
    const/4 v0, 0x0

    move/16 v268, v0

    goto :goto_87

    .line 156
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_71
        0x3 -> :sswitch_1
        0x4 -> :sswitch_65
        0x5 -> :sswitch_66
        0xb -> :sswitch_a
        0xc -> :sswitch_11
        0xd -> :sswitch_12
        0xe -> :sswitch_13
        0xf -> :sswitch_14
        0x10 -> :sswitch_15
        0x11 -> :sswitch_16
        0x12 -> :sswitch_17
        0x13 -> :sswitch_19
        0x14 -> :sswitch_1a
        0x15 -> :sswitch_1d
        0x16 -> :sswitch_1e
        0x17 -> :sswitch_22
        0x18 -> :sswitch_29
        0x1a -> :sswitch_2b
        0x1b -> :sswitch_37
        0x1d -> :sswitch_38
        0x1e -> :sswitch_3a
        0x1f -> :sswitch_3b
        0x20 -> :sswitch_b
        0x21 -> :sswitch_40
        0x22 -> :sswitch_41
        0x23 -> :sswitch_42
        0x24 -> :sswitch_45
        0x25 -> :sswitch_46
        0x26 -> :sswitch_47
        0x27 -> :sswitch_18
        0x2a -> :sswitch_68
        0x2b -> :sswitch_69
        0x2c -> :sswitch_4a
        0x2d -> :sswitch_4b
        0x2e -> :sswitch_4c
        0x2f -> :sswitch_4d
        0x30 -> :sswitch_43
        0x31 -> :sswitch_50
        0x32 -> :sswitch_51
        0x33 -> :sswitch_57
        0x34 -> :sswitch_58
        0x35 -> :sswitch_5a
        0x36 -> :sswitch_5c
        0x37 -> :sswitch_5e
        0x38 -> :sswitch_5f
        0x39 -> :sswitch_6a
        0x3a -> :sswitch_63
        0x3b -> :sswitch_74
        0x3c -> :sswitch_23
        0x3d -> :sswitch_49
        0x3e -> :sswitch_1c
        0x3f -> :sswitch_52
        0x40 -> :sswitch_53
        0x41 -> :sswitch_54
        0x42 -> :sswitch_6b
        0x43 -> :sswitch_8
        0x44 -> :sswitch_6c
        0x45 -> :sswitch_3e
        0x46 -> :sswitch_4e
        0x47 -> :sswitch_4f
        0x48 -> :sswitch_48
        0x49 -> :sswitch_59
        0x4a -> :sswitch_44
        0x4b -> :sswitch_2a
        0x4c -> :sswitch_64
        0x4d -> :sswitch_26
        0x4e -> :sswitch_5d
        0x4f -> :sswitch_77
        0x50 -> :sswitch_6f
        0x51 -> :sswitch_25
        0x52 -> :sswitch_24
        0x53 -> :sswitch_27
        0x54 -> :sswitch_79
        0x55 -> :sswitch_7e
        0x56 -> :sswitch_7a
        0x57 -> :sswitch_7b
        0x58 -> :sswitch_7c
        0x59 -> :sswitch_7d
        0x5a -> :sswitch_7f
        0x5b -> :sswitch_80
        0x5c -> :sswitch_81
        0x5d -> :sswitch_55
        0x5e -> :sswitch_56
        0x5f -> :sswitch_82
        0x60 -> :sswitch_83
        0x61 -> :sswitch_84
        0x62 -> :sswitch_85
        0x63 -> :sswitch_86
        0x64 -> :sswitch_6
        0x65 -> :sswitch_87
        0x66 -> :sswitch_72
        0x67 -> :sswitch_75
        0x68 -> :sswitch_88
        0x69 -> :sswitch_4
        0x6a -> :sswitch_10
        0x6b -> :sswitch_5
        0x6c -> :sswitch_28
        0x6d -> :sswitch_8a
        0x6e -> :sswitch_73
        0x6f -> :sswitch_8b
        0x70 -> :sswitch_90
        0x71 -> :sswitch_91
        0x72 -> :sswitch_92
        0x73 -> :sswitch_93
        0x74 -> :sswitch_94
        0x75 -> :sswitch_95
        0x76 -> :sswitch_96
        0x77 -> :sswitch_97
        0x78 -> :sswitch_98
        0x79 -> :sswitch_99
        0x7a -> :sswitch_a3
        0x7b -> :sswitch_1b
        0x7c -> :sswitch_9a
        0x7d -> :sswitch_9b
        0x7e -> :sswitch_9c
        0x7f -> :sswitch_9d
        0x80 -> :sswitch_ab
        0x81 -> :sswitch_ac
        0x82 -> :sswitch_9e
        0x84 -> :sswitch_a5
        0x85 -> :sswitch_a7
        0x86 -> :sswitch_a8
        0x87 -> :sswitch_ad
        0x88 -> :sswitch_b1
        0x89 -> :sswitch_b2
        0x8a -> :sswitch_b3
        0x8c -> :sswitch_76
        0x8d -> :sswitch_39
        0x8e -> :sswitch_3f
        0x8f -> :sswitch_78
        0x90 -> :sswitch_70
        0x91 -> :sswitch_a2
        0x92 -> :sswitch_b6
        0x93 -> :sswitch_b7
        0x94 -> :sswitch_67
        0x95 -> :sswitch_c
        0x96 -> :sswitch_b8
        0x97 -> :sswitch_3c
        0x98 -> :sswitch_ae
        0x99 -> :sswitch_2
        0x9a -> :sswitch_a0
        0x9b -> :sswitch_ba
        0x9c -> :sswitch_bb
        0x9d -> :sswitch_a4
        0x9e -> :sswitch_bc
        0x9f -> :sswitch_bd
        0xa1 -> :sswitch_af
        0xa2 -> :sswitch_be
        0xa3 -> :sswitch_c0
        0xa4 -> :sswitch_b9
        0xa5 -> :sswitch_c4
        0xa6 -> :sswitch_89
        0xa7 -> :sswitch_c5
        0xa8 -> :sswitch_ce
        0xa9 -> :sswitch_2c
        0xaa -> :sswitch_2e
        0xab -> :sswitch_2f
        0xac -> :sswitch_34
        0xad -> :sswitch_30
        0xae -> :sswitch_8d
        0xaf -> :sswitch_8e
        0xb0 -> :sswitch_c7
        0xb1 -> :sswitch_c6
        0xb2 -> :sswitch_c8
        0xb3 -> :sswitch_cd
        0xb4 -> :sswitch_60
        0xb5 -> :sswitch_61
        0xb6 -> :sswitch_62
        0xb7 -> :sswitch_3d
        0xb9 -> :sswitch_d1
        0xba -> :sswitch_cf
        0xbb -> :sswitch_ec
        0xd3 -> :sswitch_b0
        0xd4 -> :sswitch_9f
        0xd5 -> :sswitch_31
        0xd6 -> :sswitch_d2
        0xd7 -> :sswitch_d3
        0xd8 -> :sswitch_d5
        0xd9 -> :sswitch_d7
        0xda -> :sswitch_da
        0xdb -> :sswitch_7
        0xdc -> :sswitch_8f
        0xdd -> :sswitch_1f
        0xde -> :sswitch_d4
        0xdf -> :sswitch_d6
        0xe0 -> :sswitch_d
        0xe1 -> :sswitch_8c
        0xe2 -> :sswitch_df
        0xe3 -> :sswitch_e0
        0xe4 -> :sswitch_e1
        0xe5 -> :sswitch_e2
        0xe6 -> :sswitch_9
        0xe7 -> :sswitch_e3
        0xe8 -> :sswitch_b4
        0xe9 -> :sswitch_3
        0xea -> :sswitch_20
        0xeb -> :sswitch_21
        0xec -> :sswitch_e
        0xed -> :sswitch_f
        0xee -> :sswitch_e4
        0xef -> :sswitch_dd
        0xf0 -> :sswitch_c1
        0xf1 -> :sswitch_de
        0xf2 -> :sswitch_5b
        0xf3 -> :sswitch_36
        0x119 -> :sswitch_e5
        0x11a -> :sswitch_d0
        0x11b -> :sswitch_35
        0x11c -> :sswitch_db
        0x11d -> :sswitch_bf
        0x11e -> :sswitch_dc
        0x11f -> :sswitch_d8
        0x120 -> :sswitch_e6
        0x121 -> :sswitch_e7
        0x122 -> :sswitch_e8
        0x123 -> :sswitch_e9
        0x124 -> :sswitch_6d
        0x125 -> :sswitch_6e
        0x126 -> :sswitch_eb
        0x127 -> :sswitch_d9
        0x128 -> :sswitch_ea
        0x129 -> :sswitch_b5
        0x12a -> :sswitch_a9
        0x12b -> :sswitch_aa
        0x12c -> :sswitch_c2
        0x12d -> :sswitch_c3
        0x12e -> :sswitch_ed
        0x3e9 -> :sswitch_ee
        0x7d2 -> :sswitch_cb
        0x7d3 -> :sswitch_cc
        0xfa2 -> :sswitch_0
        0xfa3 -> :sswitch_a1
        0x138a -> :sswitch_c9
        0x138b -> :sswitch_ca
        0x1772 -> :sswitch_a6
        0x26ae -> :sswitch_32
        0x26af -> :sswitch_2d
        0x26b0 -> :sswitch_33
    .end sparse-switch
.end method

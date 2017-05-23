.class public Lcom/lenovo/common/AppPcUtils;
.super Ljava/lang/Object;
.source "AppPcUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    }
.end annotation


# static fields
.field private static final IGNORE_APPS_PATH:Ljava/lang/String; = "/etc/com_lenovo_security/ignore_apps"

.field private static final TAG:Ljava/lang/String; = "Security/AppPcUtils"

.field private static final mCoedDefaultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mIgnoreMap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPermDefaultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sControllableSystemApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIgnoreApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x3

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    .line 82
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/lenovo/common/AppPcUtils;->mIgnoreMap:Ljava/util/Set;

    .line 84
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v5

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v1, v4

    invoke-direct {v0, v5, v1, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 87
    .local v0, "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v1, v5

    invoke-direct {v0, v4, v1, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 94
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_CONTACTS"

    aput-object v2, v1, v5

    invoke-direct {v0, v6, v1, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 100
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "android.permission.READ_CALL_LOG"

    aput-object v2, v1, v5

    invoke-direct {v0, v3, v1, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 106
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.READ_CALL_LOG"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    const/4 v1, 0x4

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "android.permission.WRITE_CALL_LOG"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 112
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    const/4 v1, 0x5

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "android.permission.READ_CALENDAR"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 118
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.READ_CALENDAR"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    const/4 v1, 0x6

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "android.permission.WRITE_CALENDAR"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 124
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    const/4 v1, 0x7

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 131
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    const/16 v1, 0x8

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 138
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    aput-object v3, v2, v5

    const-string v3, "android.permission.BLUETOOTH"

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 144
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    const/16 v1, 0xa

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "android.permission.CALL_PHONE"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 151
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.CALL_PHONE"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    const/16 v1, 0xb

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 157
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.READ_SMS"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    const/16 v1, 0xd

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "android.permission.SEND_SMS"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 169
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.SEND_SMS"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    const/16 v1, 0xe

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "android.permission.RECEIVE_SMS"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 175
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    const/16 v1, 0xf

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 181
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.CAMERA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    const/16 v1, 0x10

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 187
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    const/16 v1, 0x11

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v7, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 193
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    const/16 v1, 0x15

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "lenovo.permission.SEND_MMS"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 221
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "lenovo.permission.SEND_MMS"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    const/16 v1, 0x16

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "lenovo.permission.APP_LOCK"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 227
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "lenovo.permission.APP_LOCK"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    const/16 v1, 0x17

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 233
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .end local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    const/16 v1, 0x18

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "com.lenovo.pemission.exit_app"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2, v7, v4}, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;-><init>(I[Ljava/lang/String;II)V

    .line 239
    .restart local v0    # "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    const-string v2, "com.lenovo.pemission.exit_app"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const/4 v1, 0x0

    sput-object v1, Lcom/lenovo/common/AppPcUtils;->sControllableSystemApps:Ljava/util/List;

    .line 521
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/lenovo/common/AppPcUtils;->sIgnoreApps:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$002(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 30
    sput-object p0, Lcom/lenovo/common/AppPcUtils;->sControllableSystemApps:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/lenovo/common/AppPcUtils;->getControllableSystemApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getControllableSystemAppDefaultStatus(I)I
    .locals 3
    .param p0, "code"    # I

    .prologue
    .line 320
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .line 321
    .local v0, "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    if-eqz v0, :cond_0

    .line 322
    iget v1, v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;->sysDefaultState:I

    .line 324
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getControllableSystemApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    const-string v0, "/etc/com_lenovo_security/controllable_system_apps"

    invoke-static {v0}, Lcom/lenovo/common/AppPcUtils;->parseFileByLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultStatus(I)I
    .locals 3
    .param p0, "code"    # I

    .prologue
    .line 308
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .line 309
    .local v0, "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    if-eqz v0, :cond_0

    .line 310
    iget v1, v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;->userDefaultState:I

    .line 312
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getFirstPermissionByCode(I)Ljava/lang/String;
    .locals 4
    .param p0, "permCode"    # I

    .prologue
    .line 348
    sget-object v2, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .line 349
    .local v1, "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    if-eqz v1, :cond_0

    .line 350
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, v1, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;->pemissions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 351
    iget-object v2, v1, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;->pemissions:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 354
    .end local v0    # "i":I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getPermCode(Ljava/lang/String;)I
    .locals 2
    .param p0, "permName"    # Ljava/lang/String;

    .prologue
    .line 296
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->mPermDefaultMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .line 297
    .local v0, "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    if-eqz v0, :cond_0

    .line 298
    iget v1, v0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;->code:I

    .line 300
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getPermissionByCode(I)Ljava/util/ArrayList;
    .locals 5
    .param p0, "permCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v2, "permList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/lenovo/common/AppPcUtils;->mCoedDefaultMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;

    .line 335
    .local v1, "info":Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
    if-eqz v1, :cond_0

    .line 336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, v1, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;->pemissions:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 337
    iget-object v3, v1, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;->pemissions:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    .end local v0    # "i":I
    :cond_0
    return-object v2
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 374
    new-instance v0, Lcom/lenovo/common/AppPcUtils$1;

    invoke-direct {v0}, Lcom/lenovo/common/AppPcUtils$1;-><init>()V

    invoke-virtual {v0}, Lcom/lenovo/common/AppPcUtils$1;->start()V

    .line 380
    return-void
.end method

.method private static initIgnoreAppsIfNeed()V
    .locals 9

    .prologue
    .line 530
    sget-object v7, Lcom/lenovo/common/AppPcUtils;->sIgnoreApps:Ljava/util/Set;

    monitor-enter v7

    .line 531
    :try_start_0
    sget-object v6, Lcom/lenovo/common/AppPcUtils;->sIgnoreApps:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 532
    monitor-exit v7

    .line 564
    .local v5, "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 534
    .end local v5    # "path":Ljava/lang/String;
    :cond_0
    const-string v5, "/etc/com_lenovo_security/ignore_apps"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    .restart local v5    # "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 537
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3    # "fis":Ljava/io/FileInputStream;
    const-string v6, "/etc/com_lenovo_security/ignore_apps"

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 545
    .local v0, "bufReader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 546
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .local v1, "bufReader":Ljava/io/BufferedReader;
    :try_start_3
    const-string v4, ""

    .line 547
    .local v4, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 548
    sget-object v6, Lcom/lenovo/common/AppPcUtils;->sIgnoreApps:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 550
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 551
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v6, "Security/AppPcUtils"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 554
    if-eqz v3, :cond_1

    .line 555
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 557
    :cond_1
    if-eqz v0, :cond_2

    .line 558
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 563
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    :try_start_6
    monitor-exit v7

    goto :goto_0

    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v6

    .line 538
    :catch_1
    move-exception v2

    .line 539
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 554
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    .line 555
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 557
    :cond_4
    if-eqz v1, :cond_5

    .line 558
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_5
    move-object v0, v1

    .line 561
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 560
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v6

    move-object v0, v1

    .line 562
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 553
    .end local v4    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v6

    .line 554
    :goto_4
    if-eqz v3, :cond_6

    .line 555
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 557
    :cond_6
    if-eqz v0, :cond_7

    .line 558
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 561
    :cond_7
    :goto_5
    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 560
    :catch_3
    move-exception v8

    goto :goto_5

    .line 553
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 560
    .local v2, "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    goto :goto_3

    .line 550
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    goto :goto_2
.end method

.method public static isHomeApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 430
    const/4 v2, 0x0

    .line 431
    .local v2, "result":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 432
    .local v1, "pkgManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 436
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    .line 437
    const/4 v2, 0x1

    .line 442
    :goto_0
    return v2

    .line 439
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isIgnorePerm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pemission"    # Ljava/lang/String;

    .prologue
    .line 398
    sget-object v0, Lcom/lenovo/common/AppPcUtils;->mIgnoreMap:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 399
    sget-object v0, Lcom/lenovo/common/AppPcUtils;->mIgnoreMap:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 401
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIgnorePkg(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 523
    invoke-static {}, Lcom/lenovo/common/AppPcUtils;->initIgnoreAppsIfNeed()V

    .line 524
    sget-object v1, Lcom/lenovo/common/AppPcUtils;->sIgnoreApps:Ljava/util/Set;

    monitor-enter v1

    .line 526
    :try_start_0
    sget-object v0, Lcom/lenovo/common/AppPcUtils;->sIgnoreApps:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isInControllableSystemApps(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 387
    sget-object v0, Lcom/lenovo/common/AppPcUtils;->sControllableSystemApps:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 388
    sget-object v0, Lcom/lenovo/common/AppPcUtils;->sControllableSystemApps:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLauncherApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 410
    const/4 v2, 0x0

    .line 411
    .local v2, "result":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 412
    .local v1, "pkgManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 413
    .local v0, "mainIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 416
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    .line 417
    const/4 v2, 0x1

    .line 421
    :goto_0
    return v2

    .line 419
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 468
    if-nez p1, :cond_0

    .line 480
    :goto_0
    return v4

    .line 471
    :cond_0
    const/4 v0, 0x0

    .line 473
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 474
    .local v3, "pkgManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 475
    .local v2, "info":Landroid/content/pm/PackageInfo;
    invoke-static {v2}, Lcom/lenovo/common/AppPcUtils;->isSystemApp(Landroid/content/pm/PackageInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 477
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "pkgManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 478
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isSystemApp(Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p0, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v1, 0x1

    .line 451
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 452
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v1

    .line 455
    :cond_1
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-nez v2, :cond_0

    .line 456
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseFileByLines(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 484
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 487
    :cond_0
    const/4 v2, 0x0

    .line 489
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 494
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 497
    .local v0, "bufReader":Ljava/io/BufferedReader;
    const-string v4, ""

    .line 498
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 499
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 501
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 502
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v6, "Security/AppPcUtils"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    if-eqz v3, :cond_1

    .line 506
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    move-object v2, v3

    .line 510
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_2
    return-object v5

    .line 490
    :catch_1
    move-exception v1

    .line 491
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_2

    .line 505
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    if-eqz v3, :cond_1

    .line 506
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 508
    :catch_2
    move-exception v6

    goto :goto_1

    .line 504
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 505
    if-eqz v3, :cond_3

    .line 506
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 508
    :cond_3
    :goto_3
    throw v6

    .local v1, "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    goto :goto_3
.end method

.class public Ltheme/content/res/AppIconThemeServices;
.super Ltheme/content/res/IAppIconThemeService$Stub;
.source "AppIconThemeServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltheme/content/res/AppIconThemeServices$MyZipFile;
    }
.end annotation


# static fields
.field private static final ICON_MAP_PATH_STRING:Ljava/lang/String; = "/system/etc/icons.xml"

.field private static final KEY_THEME_ID:Ljava/lang/String; = "LENOVO_LAUNCHER_THEME_ID"

.field private static final KEY_THEME_PATH:Ljava/lang/String; = "LENOVO_LAUNCHER_THEME_PATH"

.field private static final LENOVO_THEME_CONFIG_PATH:Ljava/lang/String; = "/system/etc/lenovo_theme_config.xml"

.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "AppIconThemeServices"

.field public static final SERVICE_NAME:Ljava/lang/String; = "AppIconThemeServices"

.field public static final SPLIT:Ljava/lang/String; = ";"

.field private static final THEME_LELAUNCHER_DO_ACTION:Ljava/lang/String; = "action_themecenter_themechange_lelauncher"

.field private static final sDefaultDensity:I

.field private static final sOptimalDensities:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconMapLock:Ljava/lang/Object;

.field private mIsReady:Z

.field private mIsReadyLock:Ljava/lang/Object;

.field private mPath:Ljava/lang/String;

.field private final mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeStamp:J

.field private mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

.field private mZipFileLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Ltheme/content/res/AppIconThemeServices;->sDefaultDensity:I

    .line 61
    sget v0, Ltheme/content/res/AppIconThemeServices;->sDefaultDensity:I

    invoke-static {v0}, Ltheme/content/res/ThemeDensityUtils;->getOptimalDensityOrder(I)[I

    move-result-object v0

    sput-object v0, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ltheme/content/res/IAppIconThemeService$Stub;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltheme/content/res/AppIconThemeServices;->mIsReadyLock:Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltheme/content/res/AppIconThemeServices;->mIsReady:Z

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltheme/content/res/AppIconThemeServices;->mIconMap:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltheme/content/res/AppIconThemeServices;->mIconMapLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltheme/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltheme/content/res/AppIconThemeServices;->mTimeStamp:J

    .line 345
    new-instance v0, Ltheme/content/res/AppIconThemeServices$2;

    invoke-direct {v0, p0}, Ltheme/content/res/AppIconThemeServices$2;-><init>(Ltheme/content/res/AppIconThemeServices;)V

    iput-object v0, p0, Ltheme/content/res/AppIconThemeServices;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    iput-object p1, p0, Ltheme/content/res/AppIconThemeServices;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method static synthetic access$000(Ltheme/content/res/AppIconThemeServices;)V
    .locals 0
    .param p0, "x0"    # Ltheme/content/res/AppIconThemeServices;

    .prologue
    .line 32
    invoke-direct {p0}, Ltheme/content/res/AppIconThemeServices;->parseIconMapFile()V

    return-void
.end method

.method static synthetic access$102(Ltheme/content/res/AppIconThemeServices;J)J
    .locals 1
    .param p0, "x0"    # Ltheme/content/res/AppIconThemeServices;
    .param p1, "x1"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Ltheme/content/res/AppIconThemeServices;->mTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$200(Ltheme/content/res/AppIconThemeServices;Z)V
    .locals 0
    .param p0, "x0"    # Ltheme/content/res/AppIconThemeServices;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ltheme/content/res/AppIconThemeServices;->setIsReadyState(Z)V

    return-void
.end method

.method static synthetic access$300(Ltheme/content/res/AppIconThemeServices;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ltheme/content/res/AppIconThemeServices;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ltheme/content/res/AppIconThemeServices;->handleThemeChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ltheme/content/res/AppIconThemeServices;)I
    .locals 1
    .param p0, "x0"    # Ltheme/content/res/AppIconThemeServices;

    .prologue
    .line 32
    iget v0, p0, Ltheme/content/res/AppIconThemeServices;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$402(Ltheme/content/res/AppIconThemeServices;I)I
    .locals 0
    .param p0, "x0"    # Ltheme/content/res/AppIconThemeServices;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Ltheme/content/res/AppIconThemeServices;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$500(Ltheme/content/res/AppIconThemeServices;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ltheme/content/res/AppIconThemeServices;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ltheme/content/res/AppIconThemeServices;->sendSwitchCompleted(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final getIconsFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 478
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/icons.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, "iconsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    .end local v0    # "iconsFile":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "iconsFile":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getLenovoThemeConfigFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 491
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/lenovo_theme_config.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getMapFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mIconMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 103
    :try_start_0
    iget-object v1, p0, Ltheme/content/res/AppIconThemeServices;->mIconMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    .local v0, "newName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 105
    monitor-exit v2

    .line 109
    .end local v0    # "newName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "newName":Ljava/lang/String;
    :cond_0
    monitor-exit v2

    move-object v0, p1

    goto :goto_0

    .line 110
    .end local v0    # "newName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPrebuildIconsMapStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 773
    const/4 v2, 0x0

    .line 775
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0}, Ltheme/content/res/AppIconThemeServices;->getIconsFile()Ljava/io/File;

    move-result-object v1

    .line 776
    .local v1, "iconsFile":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 777
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    move-object v2, v3

    .line 782
    .end local v1    # "iconsFile":Ljava/io/File;
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v2

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private final getThemZipFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 504
    const/4 v1, 0x0

    .line 505
    .local v1, "zipFile":Ljava/io/File;
    invoke-direct {p0}, Ltheme/content/res/AppIconThemeServices;->getThemePathFromSetting()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 507
    new-instance v1, Ljava/io/File;

    .end local v1    # "zipFile":Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    .restart local v1    # "zipFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 517
    :goto_0
    return-object v2

    .line 512
    :cond_0
    invoke-direct {p0}, Ltheme/content/res/AppIconThemeServices;->parseLenovoThemeConfig()Ljava/lang/String;

    move-result-object v0

    .line 513
    new-instance v1, Ljava/io/File;

    .end local v1    # "zipFile":Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 514
    .restart local v1    # "zipFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 515
    goto :goto_0

    .line 517
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getThemeFileInner(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "inPackageName"    # Ljava/lang/String;
    .param p2, "inResoucePath"    # Ljava/lang/String;

    .prologue
    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Ltheme/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 188
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 189
    const/16 v16, 0x0

    monitor-exit v17

    .line 296
    :goto_0
    return-object v16

    .line 191
    :cond_0
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 193
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v16

    :try_start_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v16

    .line 209
    :cond_2
    :try_start_2
    const-string v16, "/"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    add-int/lit8 v8, v16, 0x1

    .line 210
    .local v8, "indexSplit":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v8, v0, :cond_3

    .line 211
    const/16 v16, 0x0

    goto :goto_0

    .line 213
    :cond_3
    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 214
    .local v11, "nameBuf":Ljava/lang/StringBuffer;
    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 215
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v8, v0, :cond_4

    .line 216
    const/16 v16, 0x0

    goto :goto_0

    .line 219
    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v16

    const-string v17, ""

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v8, v0, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "."

    const-string v18, "_"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "__"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 222
    .local v14, "prefixFileName":Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0, v14}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, "fileName":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".png"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 225
    .local v13, "packageFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Ltheme/content/res/AppIconThemeServices;->getMapFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 226
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".png"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 227
    const/4 v12, 0x0

    .line 228
    .local v12, "outDensity":I
    const/4 v15, 0x0

    .line 229
    .local v15, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v6, 0x0

    .line 230
    .local v6, "filePath":Ljava/lang/String;
    const/4 v9, 0x0

    .line 231
    .local v9, "isFound":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    sget-object v16, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_7

    .line 232
    sget-object v16, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v16, v16, v7

    invoke-static/range {v16 .. v16}, Ltheme/content/res/ThemeDensityUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "densitySuffix":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "res/drawable"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 234
    .local v10, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltheme/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 235
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    move-object/from16 v16, v0

    if-nez v16, :cond_6

    .line 236
    const/16 v16, 0x0

    monitor-exit v17

    goto/16 :goto_0

    .line 239
    :catchall_1
    move-exception v16

    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 293
    .end local v3    # "densitySuffix":Ljava/lang/String;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "indexSplit":I
    .end local v9    # "isFound":Z
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "nameBuf":Ljava/lang/StringBuffer;
    .end local v12    # "outDensity":I
    .end local v13    # "packageFileName":Ljava/lang/String;
    .end local v14    # "prefixFileName":Ljava/lang/String;
    .end local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v4

    .line 294
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 296
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 238
    .restart local v3    # "densitySuffix":Ljava/lang/String;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v6    # "filePath":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "indexSplit":I
    .restart local v9    # "isFound":Z
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "nameBuf":Ljava/lang/StringBuffer;
    .restart local v12    # "outDensity":I
    .restart local v13    # "packageFileName":Ljava/lang/String;
    .restart local v14    # "prefixFileName":Ljava/lang/String;
    .restart local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ltheme/content/res/AppIconThemeServices$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v15

    .line 239
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 240
    if-eqz v15, :cond_a

    .line 241
    const/4 v9, 0x1

    .line 242
    move-object v6, v10

    .line 243
    :try_start_6
    sget-object v16, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v12, v16, v7

    .line 247
    .end local v3    # "densitySuffix":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    :cond_7
    if-nez v9, :cond_8

    .line 248
    const/4 v7, 0x0

    :goto_2
    sget-object v16, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_8

    .line 249
    sget-object v16, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v16, v16, v7

    invoke-static/range {v16 .. v16}, Ltheme/content/res/ThemeDensityUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v3

    .line 250
    .restart local v3    # "densitySuffix":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "res/drawable"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 251
    .restart local v10    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltheme/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 252
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ltheme/content/res/AppIconThemeServices$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v15

    .line 253
    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 254
    if-eqz v15, :cond_b

    .line 255
    const/4 v9, 0x1

    .line 256
    move-object v6, v10

    .line 257
    :try_start_8
    sget-object v16, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v12, v16, v7

    .line 262
    .end local v3    # "densitySuffix":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    :cond_8
    if-nez v9, :cond_9

    .line 263
    const/4 v7, 0x0

    :goto_3
    sget-object v16, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_9

    .line 264
    sget-object v16, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v16, v16, v7

    invoke-static/range {v16 .. v16}, Ltheme/content/res/ThemeDensityUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v3

    .line 265
    .restart local v3    # "densitySuffix":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "res/drawable"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".png"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 266
    .restart local v10    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltheme/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 267
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ltheme/content/res/AppIconThemeServices$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v15

    .line 268
    monitor-exit v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 269
    if-eqz v15, :cond_c

    .line 270
    const/4 v9, 0x1

    .line 271
    move-object v6, v10

    .line 272
    :try_start_a
    sget-object v16, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v12, v16, v7

    .line 290
    .end local v3    # "densitySuffix":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    :cond_9
    if-eqz v6, :cond_5

    .line 291
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    move-result-object v16

    goto/16 :goto_0

    .line 231
    .restart local v3    # "densitySuffix":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 253
    :catchall_2
    move-exception v16

    :try_start_b
    monitor-exit v17
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v16
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 248
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 268
    :catchall_3
    move-exception v16

    :try_start_d
    monitor-exit v17
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v16
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 263
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3
.end method

.method private getThemePathFromSetting()Ljava/lang/String;
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LENOVO_LAUNCHER_THEME_PATH"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getZipIconsMapStream()Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 755
    const/4 v1, 0x0

    .line 756
    .local v1, "is":Ljava/io/InputStream;
    iget-object v4, p0, Ltheme/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v4

    .line 757
    :try_start_0
    iget-object v3, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    if-nez v3, :cond_0

    .line 758
    const/4 v3, 0x0

    monitor-exit v4

    .line 769
    :goto_0
    return-object v3

    .line 760
    :cond_0
    iget-object v3, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    const-string v5, "res/xml/icons.xml"

    invoke-virtual {v3, v5}, Ltheme/content/res/AppIconThemeServices$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 761
    .local v2, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_1

    .line 763
    :try_start_1
    iget-object v3, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    invoke-virtual {v3, v2}, Ltheme/content/res/AppIconThemeServices$MyZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 768
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4

    move-object v3, v1

    .line 769
    goto :goto_0

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 768
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private handleThemeChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "themePath"    # Ljava/lang/String;
    .param p2, "themeId"    # Ljava/lang/String;

    .prologue
    .line 377
    const/4 v1, 0x0

    .line 378
    .local v1, "mIsChangeSuccess":Z
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Ltheme/content/res/AppIconThemeServices;->setIsReadyState(Z)V

    .line 379
    iget-object v4, p0, Ltheme/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v4

    .line 381
    :try_start_0
    iget-object v3, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    if-eqz v3, :cond_0

    .line 382
    iget-object v3, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    invoke-virtual {v3}, Ltheme/content/res/AppIconThemeServices$MyZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :cond_0
    :goto_0
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    .line 388
    move-object v2, p1

    .line 389
    .local v2, "ziPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 390
    const/4 v3, 0x0

    iput-object v3, p0, Ltheme/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    .line 401
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    if-eqz v1, :cond_1

    .line 403
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Ltheme/content/res/AppIconThemeServices$3;

    invoke-direct {v4, p0, p1, p2}, Ltheme/content/res/AppIconThemeServices$3;-><init>(Ltheme/content/res/AppIconThemeServices;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "parseIconMapFile"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 414
    :cond_1
    return-void

    .line 393
    :cond_2
    :try_start_2
    iput-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    .line 394
    new-instance v3, Ltheme/content/res/AppIconThemeServices$MyZipFile;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Ltheme/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p0, v5}, Ltheme/content/res/AppIconThemeServices$MyZipFile;-><init>(Ltheme/content/res/AppIconThemeServices;Ljava/io/File;)V

    iput-object v3, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    .line 395
    const/4 v1, 0x1

    .line 396
    invoke-direct {p0, p1, p2}, Ltheme/content/res/AppIconThemeServices;->setThemeValueToSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 401
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ziPath":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 384
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private isReady()Z
    .locals 2

    .prologue
    .line 86
    iget-object v1, p0, Ltheme/content/res/AppIconThemeServices;->mIsReadyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-boolean v0, p0, Ltheme/content/res/AppIconThemeServices;->mIsReady:Z

    monitor-exit v1

    return v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final parseIconMapFile()V
    .locals 18

    .prologue
    .line 548
    const/4 v2, 0x0

    .line 549
    .local v2, "fileInputStream":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 550
    .local v13, "zipfileInputStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 551
    .local v8, "prebuildfileInputStream":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 552
    .local v12, "zipVersion":I
    const/4 v7, 0x0

    .line 553
    .local v7, "prebuildVersion":I
    invoke-direct/range {p0 .. p0}, Ltheme/content/res/AppIconThemeServices;->getZipIconsMapStream()Ljava/io/InputStream;

    move-result-object v13

    .line 554
    invoke-direct/range {p0 .. p0}, Ltheme/content/res/AppIconThemeServices;->getPrebuildIconsMapStream()Ljava/io/InputStream;

    move-result-object v8

    .line 555
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ltheme/content/res/AppIconThemeServices;->parseIconMapVersion(Ljava/io/InputStream;)I

    move-result v12

    .line 556
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Ltheme/content/res/AppIconThemeServices;->parseIconMapVersion(Ljava/io/InputStream;)I

    move-result v7

    .line 557
    const-string v14, "AppIconThemeServices"

    const-string v15, "parseIconMapFile"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "zipVersion = :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v14, "AppIconThemeServices"

    const-string v15, "parseIconMapFile"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "prebuildVersion = :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-direct/range {p0 .. p0}, Ltheme/content/res/AppIconThemeServices;->getZipIconsMapStream()Ljava/io/InputStream;

    move-result-object v13

    .line 561
    invoke-direct/range {p0 .. p0}, Ltheme/content/res/AppIconThemeServices;->getPrebuildIconsMapStream()Ljava/io/InputStream;

    move-result-object v8

    .line 562
    if-lt v12, v7, :cond_3

    .line 563
    if-eqz v13, :cond_2

    move-object v2, v13

    .line 567
    :goto_0
    const-string v14, "AppIconThemeServices"

    const-string v15, "parseIconMapFile"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "fileInputStream = :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    if-nez v2, :cond_5

    .line 570
    if-eqz v13, :cond_0

    .line 572
    :try_start_0
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    const/4 v13, 0x0

    .line 578
    :cond_0
    :goto_1
    if-eqz v8, :cond_1

    .line 580
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 581
    const/4 v8, 0x0

    .line 644
    :cond_1
    :goto_2
    return-void

    :cond_2
    move-object v2, v8

    .line 563
    goto :goto_0

    .line 565
    :cond_3
    if-eqz v8, :cond_4

    move-object v2, v8

    :goto_3
    goto :goto_0

    :cond_4
    move-object v2, v13

    goto :goto_3

    .line 574
    :catch_0
    move-exception v1

    .line 575
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 582
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 583
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 588
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 589
    .local v3, "iconMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 591
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v14, 0x0

    :try_start_2
    invoke-interface {v6, v2, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 594
    :cond_6
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v14, 0x2

    if-eq v11, v14, :cond_7

    const/4 v14, 0x1

    if-ne v11, v14, :cond_6

    .line 597
    :cond_7
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 599
    .local v5, "outerDepth":I
    :cond_8
    :goto_4
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v14, 0x1

    if-eq v11, v14, :cond_d

    const/4 v14, 0x3

    if-ne v11, v14, :cond_9

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v5, :cond_d

    .line 600
    :cond_9
    const/4 v14, 0x3

    if-eq v11, v14, :cond_8

    const/4 v14, 0x4

    if-eq v11, v14, :cond_8

    .line 603
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 604
    .local v9, "tagName":Ljava/lang/String;
    if-eqz v9, :cond_8

    const-string v14, "drawable"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 605
    const/4 v14, 0x0

    const-string v15, "name"

    invoke-interface {v6, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 606
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 607
    const/4 v14, 0x4

    if-ne v11, v14, :cond_8

    .line 608
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    .line 609
    .local v10, "text":Ljava/lang/String;
    if-eqz v10, :cond_8

    const-string v14, "@drawable/"

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 610
    const/16 v14, 0xa

    invoke-virtual {v10, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 615
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "outerDepth":I
    .end local v9    # "tagName":Ljava/lang/String;
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "type":I
    :catch_2
    move-exception v1

    .line 616
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 618
    if-eqz v2, :cond_a

    .line 620
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 621
    const/4 v2, 0x0

    .line 626
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_5
    if-eqz v13, :cond_b

    .line 628
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 629
    const/4 v13, 0x0

    .line 634
    :cond_b
    :goto_6
    if-eqz v8, :cond_c

    .line 636
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 637
    const/4 v8, 0x0

    .line 643
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Ltheme/content/res/AppIconThemeServices;->updateThemesMap(Ljava/util/Map;)V

    goto/16 :goto_2

    .line 618
    .restart local v5    # "outerDepth":I
    .restart local v11    # "type":I
    :cond_d
    if-eqz v2, :cond_e

    .line 620
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 621
    const/4 v2, 0x0

    .line 626
    :cond_e
    :goto_8
    if-eqz v13, :cond_f

    .line 628
    :try_start_8
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 629
    const/4 v13, 0x0

    .line 634
    :cond_f
    :goto_9
    if-eqz v8, :cond_c

    .line 636
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 637
    const/4 v8, 0x0

    goto :goto_7

    .line 622
    :catch_3
    move-exception v1

    .line 623
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 630
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 631
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 638
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 639
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 622
    .end local v5    # "outerDepth":I
    .end local v11    # "type":I
    .local v1, "e":Ljava/lang/Exception;
    :catch_6
    move-exception v1

    .line 623
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 630
    .end local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v1

    .line 631
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 638
    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 639
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 618
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    if-eqz v2, :cond_10

    .line 620
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 621
    const/4 v2, 0x0

    .line 626
    :cond_10
    :goto_a
    if-eqz v13, :cond_11

    .line 628
    :try_start_b
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 629
    const/4 v13, 0x0

    .line 634
    :cond_11
    :goto_b
    if-eqz v8, :cond_12

    .line 636
    :try_start_c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 637
    const/4 v8, 0x0

    .line 640
    :cond_12
    :goto_c
    throw v14

    .line 622
    :catch_9
    move-exception v1

    .line 623
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 630
    .end local v1    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v1

    .line 631
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 638
    .end local v1    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v1

    .line 639
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c
.end method

.method private final parseIconMapVersion(Ljava/io/InputStream;)I
    .locals 11
    .param p1, "fileInputStream"    # Ljava/io/InputStream;

    .prologue
    .line 651
    const/4 v4, 0x0

    .line 652
    .local v4, "version":I
    if-nez p1, :cond_0

    move v5, v4

    .line 680
    .end local v4    # "version":I
    .local v5, "version":I
    :goto_0
    return v5

    .line 653
    .end local v5    # "version":I
    .restart local v4    # "version":I
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 655
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v1, p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 657
    :cond_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v7, 0x2

    if-ne v3, v7, :cond_2

    .line 658
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, "tagName":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v7, "resources"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 660
    const/4 v7, 0x0

    const-string v8, "versioncode"

    invoke-interface {v1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 661
    .local v6, "versioncode":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 662
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 663
    const-string v7, "AppIconThemeServices"

    const-string v8, "parseIconMapVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "version = :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v6    # "versioncode":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    .line 673
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 674
    const/4 p1, 0x0

    .end local v3    # "type":I
    :cond_3
    :goto_1
    move v5, v4

    .line 680
    .end local v4    # "version":I
    .restart local v5    # "version":I
    goto :goto_0

    .line 675
    .end local v5    # "version":I
    .restart local v3    # "type":I
    .restart local v4    # "version":I
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 668
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "type":I
    :catch_1
    move-exception v0

    .line 669
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 671
    if-eqz p1, :cond_3

    .line 673
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 674
    const/4 p1, 0x0

    goto :goto_1

    .line 675
    :catch_2
    move-exception v0

    .line 676
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 671
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz p1, :cond_4

    .line 673
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 674
    const/4 p1, 0x0

    .line 677
    :cond_4
    :goto_2
    throw v7

    .line 675
    :catch_3
    move-exception v0

    .line 676
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private parseLenovoThemeConfig()Ljava/lang/String;
    .locals 13

    .prologue
    .line 687
    invoke-direct {p0}, Ltheme/content/res/AppIconThemeServices;->getLenovoThemeConfigFile()Ljava/io/File;

    move-result-object v4

    .line 688
    .local v4, "inFile":Ljava/io/File;
    if-nez v4, :cond_1

    .line 689
    const/4 v8, 0x0

    .line 729
    :cond_0
    :goto_0
    return-object v8

    .line 691
    :cond_1
    const/4 v2, 0x0

    .line 692
    .local v2, "fileInputStream":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 694
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .local v3, "fileInputStream":Ljava/io/InputStream;
    const/4 v11, 0x0

    :try_start_1
    invoke-interface {v7, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 698
    :cond_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .local v10, "type":I
    const/4 v11, 0x2

    if-eq v10, v11, :cond_3

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 701
    :cond_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 703
    .local v6, "outerDepth":I
    :cond_4
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_6

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v6, :cond_6

    .line 704
    :cond_5
    const/4 v11, 0x3

    if-eq v10, v11, :cond_4

    const/4 v11, 0x4

    if-eq v10, v11, :cond_4

    .line 707
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 708
    .local v9, "tagName":Ljava/lang/String;
    const-string v11, "category"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 709
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 710
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_4

    const-string v11, "launcher"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 711
    const/4 v11, 0x0

    const-string v12, "file"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 712
    .local v8, "path":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "defResId"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "defResId":Ljava/lang/String;
    invoke-direct {p0, v8, v0}, Ltheme/content/res/AppIconThemeServices;->setThemeValueToSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 721
    if-eqz v3, :cond_0

    .line 723
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 724
    :catch_0
    move-exception v1

    .line 725
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 721
    .end local v0    # "defResId":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_9

    .line 723
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v3

    .line 729
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .end local v6    # "outerDepth":I
    .end local v10    # "type":I
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    :cond_7
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 724
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v6    # "outerDepth":I
    .restart local v10    # "type":I
    :catch_1
    move-exception v1

    .line 725
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 726
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 719
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "outerDepth":I
    .end local v10    # "type":I
    :catch_2
    move-exception v11

    .line 721
    :goto_2
    if-eqz v2, :cond_7

    .line 723
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 724
    :catch_3
    move-exception v1

    .line 725
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 721
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_3
    if-eqz v2, :cond_8

    .line 723
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 726
    :cond_8
    :goto_4
    throw v11

    .line 724
    :catch_4
    move-exception v1

    .line 725
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 721
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 719
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    :catch_5
    move-exception v11

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_2

    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v6    # "outerDepth":I
    .restart local v10    # "type":I
    :cond_9
    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private registerThemeChangedReceiver()V
    .locals 3

    .prologue
    .line 337
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 338
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "action_themecenter_themechange_lelauncher"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Ltheme/content/res/AppIconThemeServices;->mContext:Landroid/content/Context;

    iget-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 344
    return-void
.end method

.method private sendSwitchCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "themePath"    # Ljava/lang/String;
    .param p2, "themeId"    # Ljava/lang/String;

    .prologue
    .line 421
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 422
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "appiconintegration.action.UPDATE_THEME_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string v1, "ThemePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    const-string v1, "ThemeResId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    iget-object v1, p0, Ltheme/content/res/AppIconThemeServices;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 429
    return-void
.end method

.method private setIsReadyState(Z)V
    .locals 2
    .param p1, "isReady"    # Z

    .prologue
    .line 76
    iget-object v1, p0, Ltheme/content/res/AppIconThemeServices;->mIsReadyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iput-boolean p1, p0, Ltheme/content/res/AppIconThemeServices;->mIsReady:Z

    .line 78
    monitor-exit v1

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setThemeValueToSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x2

    .line 535
    iget-object v1, p0, Ltheme/content/res/AppIconThemeServices;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 539
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "LENOVO_LAUNCHER_THEME_PATH"

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 540
    const-string v1, "LENOVO_LAUNCHER_THEME_ID"

    invoke-static {v0, v1, p2, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 542
    return-void
.end method

.method private final updateThemesMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Ltheme/content/res/AppIconThemeServices;->mIconMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices;->mIconMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices;->mIconMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getThemeIconInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "inPackageName"    # Ljava/lang/String;
    .param p2, "inResoucePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 121
    const-string v2, "AppIconThemeServices"

    const-string v3, "getThemeIconInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inPackageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",inResoucePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Ltheme/content/res/AppIconThemeServices;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-object v1

    .line 126
    :cond_1
    if-eqz p1, :cond_2

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 129
    :cond_2
    if-eqz p2, :cond_3

    .line 130
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 132
    :cond_3
    invoke-direct {p0, p1, p2}, Ltheme/content/res/AppIconThemeServices;->getThemeFileInner(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getThemeIconInfoByFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 146
    const-string v9, "AppIconThemeServices"

    const-string v10, "getThemeIconInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fileName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Ltheme/content/res/AppIconThemeServices;->isReady()Z

    move-result v9

    if-nez v9, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-object v8

    .line 150
    :cond_1
    const/4 v6, 0x0

    .line 152
    .local v6, "path":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Ltheme/content/res/AppIconThemeServices;->getMapFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 153
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    const/4 v5, 0x0

    .line 155
    .local v5, "outDensity":I
    const/4 v7, 0x0

    .line 156
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v2, 0x0

    .line 157
    .local v2, "filePath":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sget-object v9, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    array-length v9, v9

    if-ge v3, v9, :cond_2

    .line 158
    sget-object v9, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v9, v9, v3

    invoke-static {v9}, Ltheme/content/res/ThemeDensityUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "densitySuffix":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "res/drawable"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "name":Ljava/lang/String;
    iget-object v10, p0, Ltheme/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :try_start_1
    iget-object v9, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    if-nez v9, :cond_3

    .line 162
    monitor-exit v10

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    .end local v0    # "densitySuffix":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "outDensity":I
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 178
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ltheme/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 164
    .restart local v0    # "densitySuffix":Ljava/lang/String;
    .restart local v2    # "filePath":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "outDensity":I
    .restart local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_3
    :try_start_3
    iget-object v9, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    invoke-virtual {v9, v4}, Ltheme/content/res/AppIconThemeServices$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 165
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    if-eqz v7, :cond_4

    .line 167
    :try_start_4
    sget-object v9, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v5, v9, v3

    .line 168
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v6

    .line 169
    goto :goto_2

    .line 157
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 470
    iget-wide v0, p0, Ltheme/content/res/AppIconThemeServices;->mTimeStamp:J

    return-wide v0
.end method

.method public setThemeForUserSwitched()V
    .locals 6

    .prologue
    .line 300
    invoke-direct {p0}, Ltheme/content/res/AppIconThemeServices;->getThemZipFilePath()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "ziPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    :goto_0
    return-void

    .line 304
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Ltheme/content/res/AppIconThemeServices;->setIsReadyState(Z)V

    .line 305
    iput-object v1, p0, Ltheme/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    .line 307
    :try_start_0
    iget-object v3, p0, Ltheme/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :try_start_1
    iget-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    if-eqz v2, :cond_1

    .line 309
    iget-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    invoke-virtual {v2}, Ltheme/content/res/AppIconThemeServices$MyZipFile;->close()V

    .line 310
    const/4 v2, 0x0

    iput-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    .line 312
    :cond_1
    new-instance v2, Ltheme/content/res/AppIconThemeServices$MyZipFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Ltheme/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p0, v4}, Ltheme/content/res/AppIconThemeServices$MyZipFile;-><init>(Ltheme/content/res/AppIconThemeServices;Ljava/io/File;)V

    iput-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    .line 313
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    :goto_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ltheme/content/res/AppIconThemeServices$1;

    invoke-direct {v3, p0}, Ltheme/content/res/AppIconThemeServices$1;-><init>(Ltheme/content/res/AppIconThemeServices;)V

    const-string v4, "parseIconMapFile"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 435
    invoke-direct {p0}, Ltheme/content/res/AppIconThemeServices;->getThemZipFilePath()Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "ziPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    :goto_0
    return-void

    .line 440
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Ltheme/content/res/AppIconThemeServices;->setIsReadyState(Z)V

    .line 441
    iput-object v1, p0, Ltheme/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    .line 443
    :try_start_0
    iget-object v3, p0, Ltheme/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :try_start_1
    iget-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    if-eqz v2, :cond_1

    .line 445
    iget-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    invoke-virtual {v2}, Ltheme/content/res/AppIconThemeServices$MyZipFile;->close()V

    .line 446
    const/4 v2, 0x0

    iput-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    .line 448
    :cond_1
    new-instance v2, Ltheme/content/res/AppIconThemeServices$MyZipFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Ltheme/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p0, v4}, Ltheme/content/res/AppIconThemeServices$MyZipFile;-><init>(Ltheme/content/res/AppIconThemeServices;Ljava/io/File;)V

    iput-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    .line 449
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    :goto_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ltheme/content/res/AppIconThemeServices$4;

    invoke-direct {v3, p0}, Ltheme/content/res/AppIconThemeServices$4;-><init>(Ltheme/content/res/AppIconThemeServices;)V

    const-string v4, "parseIconMapFile"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 461
    invoke-direct {p0}, Ltheme/content/res/AppIconThemeServices;->registerThemeChangedReceiver()V

    goto :goto_0

    .line 449
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

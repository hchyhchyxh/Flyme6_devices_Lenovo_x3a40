.class public Landroid/content/pm/LauncherActivityInfo;
.super Ljava/lang/Object;
.source "LauncherActivityInfo.java"


# static fields
.field private static final FEATURE_SUPPORT_LENOVO_BADGED_ICON:Z = true

.field private static final TAG:Ljava/lang/String; = "LauncherActivityInfo"


# instance fields
.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mComponentName:Landroid/content/ComponentName;

.field private mFirstInstallTime:J

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 68
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "firstInstallTime"    # J

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherActivityInfo;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object p2, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 60
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 61
    invoke-static {p2}, Landroid/content/pm/LauncherApps;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mComponentName:Landroid/content/ComponentName;

    .line 62
    iput-object p3, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    .line 63
    iput-wide p4, p0, Landroid/content/pm/LauncherActivityInfo;->mFirstInstallTime:J

    .line 64
    return-void
.end method

.method private getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "iconRes"    # I
    .param p2, "density"    # I

    .prologue
    .line 150
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 152
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 154
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 158
    .end local v0    # "resources":Landroid/content/res/Resources;
    :goto_0
    return-object v1

    .line 155
    :catch_0
    move-exception v1

    .line 158
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 155
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private getOriginalIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "density"    # I

    .prologue
    .line 131
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getIconResourceInternal()I

    move-result v1

    .line 132
    .local v1, "iconRes":I
    invoke-direct {p0, v1, p1}, Landroid/content/pm/LauncherActivityInfo;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 135
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getApplicationFlags()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    return v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getBadgedIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "density"    # I

    .prologue
    .line 205
    const/4 v2, 0x0

    .line 208
    .local v2, "originalIcon":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 214
    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "getLauncherIconBadge"

    iget-object v5, p0, Landroid/content/pm/LauncherActivityInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->isPackageProtected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    const v1, 0x10802f5

    .line 216
    .local v1, "badgeResId":I
    const v3, 0x10802f5

    invoke-direct {p0, v3, p1}, Landroid/content/pm/LauncherActivityInfo;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 217
    .local v0, "badgeIcon":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/content/pm/PackageManager;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 220
    .end local v0    # "badgeIcon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "badgeResId":I
    :cond_0
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 221
    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 225
    .end local v2    # "originalIcon":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 223
    .restart local v2    # "originalIcon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const-string v3, "LauncherActivityInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create badged icon for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getFirstInstallTime()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Landroid/content/pm/LauncherActivityInfo;->mFirstInstallTime:J

    return-wide v0
.end method

.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "density"    # I

    .prologue
    .line 112
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v1

    .line 113
    .local v1, "iconRes":I
    invoke-direct {p0, v1, p1}, Landroid/content/pm/LauncherActivityInfo;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 115
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 116
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    :cond_0
    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.class final Llenovo/design/widget/CoordinatorLayout$SavedState$1;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/CoordinatorLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Llenovo/design/widget/CoordinatorLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 2625
    invoke-virtual {p0, p1}, Llenovo/design/widget/CoordinatorLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Llenovo/design/widget/CoordinatorLayout$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llenovo/design/widget/CoordinatorLayout$SavedState;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 2628
    new-instance v0, Llenovo/design/widget/CoordinatorLayout$SavedState;

    invoke-direct {v0, p1}, Llenovo/design/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 2625
    invoke-virtual {p0, p1}, Llenovo/design/widget/CoordinatorLayout$SavedState$1;->newArray(I)[Llenovo/design/widget/CoordinatorLayout$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Llenovo/design/widget/CoordinatorLayout$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2633
    new-array v0, p1, [Llenovo/design/widget/CoordinatorLayout$SavedState;

    return-object v0
.end method

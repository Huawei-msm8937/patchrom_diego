.class public Lcom/android/internal/statusbar/StatusBarIconList;
.super Ljava/lang/Object;
.source "StatusBarIconList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/statusbar/StatusBarIconList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

.field private mSlots:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIconList$1;

    invoke-direct {v0}, Lcom/android/internal/statusbar/StatusBarIconList$1;-><init>()V

    sput-object v0, Lcom/android/internal/statusbar/StatusBarIconList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->readFromParcel(Landroid/os/Parcel;)V

    .line 33
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/internal/statusbar/StatusBarIconList;)V
    .locals 5
    .param p1, "that"    # Lcom/android/internal/statusbar/StatusBarIconList;

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 146
    iput-object v3, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    .line 147
    iput-object v3, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    .line 157
    :cond_0
    return-void

    .line 149
    :cond_1
    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    array-length v0, v2

    .line 150
    .local v0, "N":I
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    .line 151
    new-array v2, v0, [Lcom/android/internal/statusbar/StatusBarIcon;

    iput-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    .line 152
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v2, v1

    .line 154
    iget-object v4, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    :goto_1
    aput-object v2, v4, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 154
    goto :goto_1
.end method

.method public defineSlots([Ljava/lang/String;)V
    .locals 4
    .param p1, "slots"    # [Ljava/lang/String;

    .prologue
    .line 91
    array-length v0, p1

    .line 92
    .local v0, "N":I
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    .line 93
    .local v2, "s":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 94
    aget-object v3, p1, v1

    aput-object v3, v2, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    new-array v3, v0, [Lcom/android/internal/statusbar/StatusBarIcon;

    iput-object v3, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    .line 97
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 160
    iget-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    array-length v0, v2

    .line 161
    .local v0, "N":I
    const-string v2, "Icon list:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 163
    const-string v2, "  %2d: (%s) %s\n"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    aget-object v5, v5, v1

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method

.method public getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSlotIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    array-length v0, v2

    .line 101
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 102
    iget-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 101
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getViewIndex(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v2, :cond_1

    .line 134
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 135
    iget-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 136
    add-int/lit8 v0, v0, 0x1

    .line 134
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 38
    .local v0, "N":I
    if-gez v0, :cond_1

    .line 39
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    .line 48
    :cond_0
    return-void

    .line 41
    :cond_1
    new-array v2, v0, [Lcom/android/internal/statusbar/StatusBarIcon;

    iput-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    iget-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    new-instance v3, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-direct {v3, p1}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/Parcel;)V

    aput-object v3, v2, v1

    .line 42
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeIcon(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 119
    return-void
.end method

.method public setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    aput-object v1, v0, p1

    .line 115
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 51
    iget-object v3, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 52
    iget-object v3, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    if-nez v3, :cond_1

    .line 53
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    :cond_0
    return-void

    .line 55
    :cond_1
    iget-object v3, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    array-length v0, v3

    .line 56
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 58
    iget-object v3, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    aget-object v2, v3, v1

    .line 59
    .local v2, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v2, :cond_2

    .line 60
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/statusbar/StatusBarIcon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1
.end method

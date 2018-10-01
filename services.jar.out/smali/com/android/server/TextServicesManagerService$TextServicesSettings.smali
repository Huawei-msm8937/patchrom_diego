.class Lcom/android/server/TextServicesManagerService$TextServicesSettings;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextServicesSettings"
.end annotation


# static fields
.field private static final SUPPORT_CHECK_LANGUAGE:Ljava/lang/String;


# instance fields
.field private mCurrentProfileIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCurrentUserId:I

.field private mLock:Ljava/lang/Object;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1030
    const-string v0, "ro.config.check_language"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->SUPPORT_CHECK_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "userId"    # I

    .prologue
    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1033
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    .line 1035
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    .line 1038
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    .line 1039
    iput p2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    .line 1040
    return-void
.end method


# virtual methods
.method public getCurrentUserId()I
    .locals 1

    .prologue
    .line 1068
    iget v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    return v0
.end method

.method public getSelectedSpellChecker()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "selected_spell_checker"

    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedSpellCheckerSubtype()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "selected_spell_checker_subtype"

    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCurrentProfile(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1058
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1059
    :try_start_0
    iget v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    if-ne p1, v3, :cond_0

    monitor-exit v2

    .line 1063
    :goto_0
    return v1

    .line 1060
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1061
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    aget v3, v3, v0

    if-ne p1, v3, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 1064
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1060
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1063
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isSpellCheckerEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1099
    const/4 v0, 0x0

    .line 1100
    .local v0, "spellCheckFlag":I
    sget-object v2, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->SUPPORT_CHECK_LANGUAGE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1101
    const/4 v0, 0x1

    .line 1103
    :cond_0
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "spell_checker_enabled"

    iget v4, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putSelectedSpellChecker(Ljava/lang/String;)V
    .locals 3
    .param p1, "sciId"    # Ljava/lang/String;

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "selected_spell_checker"

    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1074
    return-void
.end method

.method public putSelectedSpellCheckerSubtype(I)V
    .locals 4
    .param p1, "hashCode"    # I

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "selected_spell_checker_subtype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1080
    return-void
.end method

.method public setCurrentProfileIds([I)V
    .locals 2
    .param p1, "currentProfileIds"    # [I

    .prologue
    .line 1052
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1053
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    .line 1054
    monitor-exit v1

    .line 1055
    return-void

    .line 1054
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 1048
    iput p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    .line 1049
    return-void
.end method

.method public setSpellCheckerEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1083
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "spell_checker_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1085
    return-void

    .line 1083
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

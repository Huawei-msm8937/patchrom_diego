.class public abstract Landroid/database/sqlite/SQLiteProgram;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteProgram.java"


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final mBindArgs:[Ljava/lang/Object;

.field private final mColumnNames:[Ljava/lang/String;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mNumParameters:I

.field private final mReadOnly:Z

.field private final mSql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/database/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;
    .param p4, "cancellationSignalForPrepare"    # Landroid/os/CancellationSignal;

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    .line 50
    :goto_0
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-static {v4}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v2

    .line 51
    .local v2, "n":I
    packed-switch v2, :pswitch_data_0

    .line 61
    if-ne v2, v0, :cond_1

    .line 62
    .local v0, "assumeReadOnly":Z
    :goto_1
    new-instance v1, Landroid/database/sqlite/SQLiteStatementInfo;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteStatementInfo;-><init>()V

    .line 63
    .local v1, "info":Landroid/database/sqlite/SQLiteStatementInfo;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v6

    invoke-virtual {v4, v5, v6, p4, v1}, Landroid/database/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V

    .line 66
    iget-boolean v4, v1, Landroid/database/sqlite/SQLiteStatementInfo;->readOnly:Z

    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteProgram;->mReadOnly:Z

    .line 67
    iget-object v4, v1, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    iput-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    .line 68
    iget v4, v1, Landroid/database/sqlite/SQLiteStatementInfo;->numParameters:I

    iput v4, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    .line 72
    .end local v0    # "assumeReadOnly":Z
    .end local v1    # "info":Landroid/database/sqlite/SQLiteStatementInfo;
    :goto_2
    if-eqz p3, :cond_2

    array-length v4, p3

    iget v5, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-le v4, v5, :cond_2

    .line 73
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many bind arguments.  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " arguments were provided but the statement needs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " arguments."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 47
    .end local v2    # "n":I
    :cond_0
    iput-object v7, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    goto :goto_0

    .line 55
    .restart local v2    # "n":I
    :pswitch_0
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteProgram;->mReadOnly:Z

    .line 56
    sget-object v4, Landroid/database/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    .line 57
    iput v3, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    goto :goto_2

    :cond_1
    move v0, v3

    .line 61
    goto :goto_1

    .line 78
    :cond_2
    iget v4, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-eqz v4, :cond_4

    .line 79
    iget v4, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    .line 80
    if-eqz p3, :cond_3

    .line 81
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    array-length v5, p3

    invoke-static {p3, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    :cond_3
    :goto_3
    return-void

    .line 84
    :cond_4
    iput-object v7, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    goto :goto_3

    .line 51
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private bind(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 216
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-le p1, v0, :cond_1

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot bind argument at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the index is out of range.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "The statement has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parameters."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x1

    aput-object p2, v0, v1

    .line 222
    return-void
.end method


# virtual methods
.method public bindAllArgsAsStrings([Ljava/lang/String;)V
    .locals 2
    .param p1, "bindArgs"    # [Ljava/lang/String;

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    array-length v0, p1

    .local v0, "i":I
    :goto_0
    if-eqz v0, :cond_0

    .line 205
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 204
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 208
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public bindBlob(I[B)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # [B

    .prologue
    .line 182
    if-nez p2, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the bind value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 186
    return-void
.end method

.method public bindDouble(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 157
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 158
    return-void
.end method

.method public bindLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 146
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 147
    return-void
.end method

.method public bindNull(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 136
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 168
    if-nez p2, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the bind value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 172
    return-void
.end method

.method public clearBindings()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    :cond_0
    return-void
.end method

.method final getBindArgs()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method final getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method protected final getConnectionFlags()I
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteProgram;->mReadOnly:Z

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v0

    return v0
.end method

.method final getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method protected final getSession()Landroid/database/sqlite/SQLiteSession;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    return-object v0
.end method

.method final getSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    return-object v0
.end method

.method public final getUniqueId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    const/4 v0, -0x1

    return v0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    .line 213
    return-void
.end method

.method protected final onCorruption()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 117
    return-void
.end method
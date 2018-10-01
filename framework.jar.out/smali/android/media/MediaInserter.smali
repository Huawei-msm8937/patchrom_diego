.class public Landroid/media/MediaInserter;
.super Ljava/lang/Object;
.source "MediaInserter.java"


# instance fields
.field private final mBufferSizePerUri:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPriorityRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/IContentProvider;Ljava/lang/String;I)V
    .locals 1
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "bufferSizePerUri"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    .line 49
    iput-object p1, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    .line 50
    iput-object p2, p0, Landroid/media/MediaInserter;->mPackageName:Ljava/lang/String;

    .line 51
    iput p3, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    .line 52
    return-void
.end method

.method private flush(Landroid/net/Uri;Ljava/util/List;)V
    .locals 3
    .param p1, "tableUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Landroid/content/ContentValues;

    .line 100
    .local v0, "valuesArray":[Landroid/content/ContentValues;
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "valuesArray":[Landroid/content/ContentValues;
    check-cast v0, [Landroid/content/ContentValues;

    .line 101
    .restart local v0    # "valuesArray":[Landroid/content/ContentValues;
    iget-object v1, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/media/MediaInserter;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, v0}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 102
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 104
    .end local v0    # "valuesArray":[Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private flushAllPriority()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v3, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 91
    .local v2, "tableUri":Landroid/net/Uri;
    iget-object v3, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 92
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {p0, v2, v1}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_0

    .line 94
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v2    # "tableUri":Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 95
    return-void
.end method

.method private insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V
    .locals 5
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "priority"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    if-eqz p3, :cond_2

    iget-object v2, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    .line 64
    .local v2, "rowmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    :goto_0
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 65
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v1, :cond_0

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwMediaScannerManager()Landroid/common/HwMediaScannerManager;

    move-result-object v3

    iget v4, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    invoke-interface {v3, p1, v4}, Landroid/common/HwMediaScannerManager;->getBufferSize(Landroid/net/Uri;I)I

    move-result v0

    .line 73
    .local v0, "bufferSize":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v0, :cond_1

    .line 74
    invoke-direct {p0}, Landroid/media/MediaInserter;->flushAllPriority()V

    .line 75
    invoke-direct {p0, p1, v1}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    .line 78
    :cond_1
    return-void

    .line 63
    .end local v0    # "bufferSize":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v2    # "rowmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    :cond_2
    iget-object v2, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    goto :goto_0
.end method


# virtual methods
.method public flushAll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/media/MediaInserter;->flushAllPriority()V

    .line 82
    iget-object v3, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 83
    .local v2, "tableUri":Landroid/net/Uri;
    iget-object v3, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 84
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {p0, v2, v1}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_0

    .line 86
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v2    # "tableUri":Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 87
    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V

    .line 56
    return-void
.end method

.method public insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V

    .line 60
    return-void
.end method

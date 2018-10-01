.class public Landroid/text/util/Rfc822Tokenizer;
.super Ljava/lang/Object;
.source "Rfc822Tokenizer.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crunch(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v4, 0x20

    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 207
    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 208
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 210
    .local v0, "c":C
    if-nez v0, :cond_2

    .line 211
    if-eqz v1, :cond_0

    add-int/lit8 v3, v2, -0x1

    if-eq v1, v3, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_1

    .line 216
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 217
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 219
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "c":C
    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_5

    .line 227
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_4

    .line 228
    invoke-virtual {p0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 226
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 231
    :cond_5
    return-void
.end method

.method public static tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V
    .locals 13
    .param p0, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "out":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/util/Rfc822Token;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v8, "name":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, "address":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v2, "comment":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 51
    .local v6, "i":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 53
    .local v3, "cursor":I
    const/4 v5, 0x0

    .line 54
    .local v5, "find_add_start":Z
    const/4 v4, 0x0

    .line 57
    .local v4, "find_add_end":Z
    :cond_0
    :goto_0
    if-ge v6, v3, :cond_15

    .line 58
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 60
    .local v1, "c":C
    const/16 v9, 0x2c

    if-eq v1, v9, :cond_1

    const/16 v9, 0x3b

    if-ne v1, v9, :cond_6

    .line 61
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 63
    :goto_1
    if-ge v6, v3, :cond_2

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_2

    .line 64
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 67
    :cond_2
    invoke-static {v8}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 70
    new-instance v9, Landroid/text/util/Rfc822Token;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_3
    :goto_2
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 80
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 81
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 157
    :cond_4
    :goto_3
    if-eqz v5, :cond_0

    .line 158
    const/4 v5, 0x0

    .line 159
    if-eqz v4, :cond_14

    .line 160
    const/4 v4, 0x0

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-gtz v9, :cond_0

    .line 162
    const/16 v9, 0x3c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    const/16 v9, 0x3e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 73
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 74
    new-instance v9, Landroid/text/util/Rfc822Token;

    const/4 v10, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 82
    :cond_6
    const/16 v9, 0x22

    if-ne v1, v9, :cond_a

    .line 83
    add-int/lit8 v6, v6, 0x1

    .line 85
    :goto_4
    if-ge v6, v3, :cond_4

    .line 86
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 88
    const/16 v9, 0x22

    if-ne v1, v9, :cond_7

    .line 89
    add-int/lit8 v6, v6, 0x1

    .line 90
    goto :goto_3

    .line 91
    :cond_7
    const/16 v9, 0x5c

    if-ne v1, v9, :cond_9

    .line 92
    add-int/lit8 v9, v6, 0x1

    if-ge v9, v3, :cond_8

    .line 93
    add-int/lit8 v9, v6, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    :cond_8
    add-int/lit8 v6, v6, 0x2

    goto :goto_4

    .line 97
    :cond_9
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 101
    :cond_a
    const/16 v9, 0x28

    if-ne v1, v9, :cond_10

    .line 102
    const/4 v7, 0x1

    .line 103
    .local v7, "level":I
    add-int/lit8 v6, v6, 0x1

    .line 105
    :goto_5
    if-ge v6, v3, :cond_4

    if-lez v7, :cond_4

    .line 106
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 108
    const/16 v9, 0x29

    if-ne v1, v9, :cond_c

    .line 109
    const/4 v9, 0x1

    if-le v7, v9, :cond_b

    .line 110
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    :cond_b
    add-int/lit8 v7, v7, -0x1

    .line 114
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 115
    :cond_c
    const/16 v9, 0x28

    if-ne v1, v9, :cond_d

    .line 116
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v7, v7, 0x1

    .line 118
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 119
    :cond_d
    const/16 v9, 0x5c

    if-ne v1, v9, :cond_f

    .line 120
    add-int/lit8 v9, v6, 0x1

    if-ge v9, v3, :cond_e

    .line 121
    add-int/lit8 v9, v6, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    :cond_e
    add-int/lit8 v6, v6, 0x2

    goto :goto_5

    .line 125
    :cond_f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 129
    .end local v7    # "level":I
    :cond_10
    const/16 v9, 0x3c

    if-ne v1, v9, :cond_12

    .line 131
    const/4 v5, 0x1

    .line 133
    add-int/lit8 v6, v6, 0x1

    .line 135
    :goto_6
    if-ge v6, v3, :cond_4

    .line 136
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 138
    const/16 v9, 0x3e

    if-ne v1, v9, :cond_11

    .line 140
    const/4 v4, 0x1

    .line 142
    add-int/lit8 v6, v6, 0x1

    .line 143
    goto/16 :goto_3

    .line 145
    :cond_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 149
    :cond_12
    const/16 v9, 0x20

    if-ne v1, v9, :cond_13

    .line 150
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 153
    :cond_13
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 166
    :cond_14
    const/16 v9, 0x3c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 174
    .end local v1    # "c":C
    :cond_15
    invoke-static {v8}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_17

    .line 177
    new-instance v9, Landroid/text/util/Rfc822Token;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_16
    :goto_7
    return-void

    .line 180
    :cond_17
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_16

    .line 181
    new-instance v9, Landroid/text/util/Rfc822Token;

    const/4 v10, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public static tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    invoke-static {p0, v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 200
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/text/util/Rfc822Token;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/util/Rfc822Token;

    return-object v1
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x28

    const/16 v5, 0x22

    .line 268
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 269
    .local v2, "len":I
    move v1, p2

    .line 271
    .local v1, "i":I
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_1

    .line 272
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 274
    .local v0, "c":C
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_2

    .line 328
    .end local v0    # "c":C
    :cond_1
    return v1

    .line 276
    .restart local v0    # "c":C
    :cond_2
    if-ne v0, v5, :cond_5

    .line 277
    add-int/lit8 v1, v1, 0x1

    .line 279
    :goto_1
    if-ge v1, v2, :cond_0

    .line 280
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 282
    if-ne v0, v5, :cond_3

    .line 283
    add-int/lit8 v1, v1, 0x1

    .line 284
    goto :goto_0

    .line 285
    :cond_3
    if-ne v0, v7, :cond_4

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_4

    .line 286
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 288
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 291
    :cond_5
    if-ne v0, v6, :cond_9

    .line 292
    const/4 v3, 0x1

    .line 293
    .local v3, "level":I
    add-int/lit8 v1, v1, 0x1

    .line 295
    :goto_2
    if-ge v1, v2, :cond_0

    if-lez v3, :cond_0

    .line 296
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 298
    const/16 v4, 0x29

    if-ne v0, v4, :cond_6

    .line 299
    add-int/lit8 v3, v3, -0x1

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 301
    :cond_6
    if-ne v0, v6, :cond_7

    .line 302
    add-int/lit8 v3, v3, 0x1

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 304
    :cond_7
    if-ne v0, v7, :cond_8

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_8

    .line 305
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 307
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 310
    .end local v3    # "level":I
    :cond_9
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_b

    .line 311
    add-int/lit8 v1, v1, 0x1

    .line 313
    :goto_3
    if-ge v1, v2, :cond_0

    .line 314
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 316
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_a

    .line 317
    add-int/lit8 v1, v1, 0x1

    .line 318
    goto :goto_0

    .line 320
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 324
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "best":I
    const/4 v1, 0x0

    .line 245
    .local v1, "i":I
    :cond_0
    :goto_0
    if-ge v1, p2, :cond_2

    .line 246
    invoke-virtual {p0, p1, v1}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 248
    if-ge v1, p2, :cond_0

    .line 249
    add-int/lit8 v1, v1, 0x1

    .line 251
    :goto_1
    if-ge v1, p2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 255
    :cond_1
    if-ge v1, p2, :cond_0

    .line 256
    move v0, v1

    goto :goto_0

    .line 261
    :cond_2
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

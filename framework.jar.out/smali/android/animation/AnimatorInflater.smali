.class public Landroid/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorInflater$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final DBG_ANIMATOR_INFLATER:Z = false

.field private static final SEQUENTIALLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x3

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2

.field private static final VALUE_TYPE_UNDEFINED:I = 0x4

.field private static final sTmpTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 666
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .locals 23
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "parent"    # Landroid/animation/AnimatorSet;
    .param p5, "sequenceOrdering"    # I
    .param p6, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    const/4 v12, 0x0

    .line 674
    .local v12, "anim":Landroid/animation/Animator;
    const/4 v14, 0x0

    .line 678
    .local v14, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    .line 681
    .local v15, "depth":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, "type":I
    const/4 v4, 0x3

    move/from16 v0, v21

    if-ne v0, v4, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v15, :cond_9

    :cond_1
    const/4 v4, 0x1

    move/from16 v0, v21

    if-eq v0, v4, :cond_9

    .line 683
    const/4 v4, 0x2

    move/from16 v0, v21

    if-ne v0, v4, :cond_0

    .line 687
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 688
    .local v20, "name":Ljava/lang/String;
    const/16 v16, 0x0

    .line 690
    .local v16, "gotValues":Z
    const-string/jumbo v4, "objectAnimator"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 691
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 718
    :goto_1
    if-eqz p4, :cond_0

    if-nez v16, :cond_0

    .line 719
    if-nez v14, :cond_2

    .line 720
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .restart local v14    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_2
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 692
    :cond_3
    const-string v4, "animator"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 693
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v4, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    move-result-object v12

    goto :goto_1

    .line 694
    :cond_4
    const-string/jumbo v4, "set"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 695
    new-instance v12, Landroid/animation/AnimatorSet;

    .end local v12    # "anim":Landroid/animation/Animator;
    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 697
    .restart local v12    # "anim":Landroid/animation/Animator;
    if-eqz p1, :cond_5

    .line 698
    sget-object v4, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 702
    .local v11, "a":Landroid/content/res/TypedArray;
    :goto_2
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    .line 703
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .local v9, "ordering":I
    move-object v8, v12

    .line 704
    check-cast v8, Landroid/animation/AnimatorSet;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 706
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 700
    .end local v9    # "ordering":I
    .end local v11    # "a":Landroid/content/res/TypedArray;
    :cond_5
    sget-object v4, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .restart local v11    # "a":Landroid/content/res/TypedArray;
    goto :goto_2

    .line 707
    .end local v11    # "a":Landroid/content/res/TypedArray;
    :cond_6
    const-string/jumbo v4, "propertyValuesHolder"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 708
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v4}, Landroid/animation/AnimatorInflater;->loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v22

    .line 710
    .local v22, "values":[Landroid/animation/PropertyValuesHolder;
    if-eqz v22, :cond_7

    if-eqz v12, :cond_7

    instance-of v4, v12, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_7

    move-object v4, v12

    .line 711
    check-cast v4, Landroid/animation/ValueAnimator;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 713
    :cond_7
    const/16 v16, 0x1

    .line 714
    goto/16 :goto_1

    .line 715
    .end local v22    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_8
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown animator name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 725
    .end local v16    # "gotValues":Z
    .end local v20    # "name":Ljava/lang/String;
    :cond_9
    if-eqz p4, :cond_b

    if-eqz v14, :cond_b

    .line 726
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v13, v4, [Landroid/animation/Animator;

    .line 727
    .local v13, "animsArray":[Landroid/animation/Animator;
    const/16 v18, 0x0

    .line 728
    .local v18, "index":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/Animator;

    .line 729
    .local v11, "a":Landroid/animation/Animator;
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "index":I
    .local v19, "index":I
    aput-object v11, v13, v18

    move/from16 v18, v19

    .line 730
    .end local v19    # "index":I
    .restart local v18    # "index":I
    goto :goto_3

    .line 731
    .end local v11    # "a":Landroid/animation/Animator;
    :cond_a
    if-nez p5, :cond_c

    .line 732
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 737
    .end local v13    # "animsArray":[Landroid/animation/Animator;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "index":I
    :cond_b
    :goto_4
    return-object v12

    .line 734
    .restart local v13    # "animsArray":[Landroid/animation/Animator;
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v18    # "index":I
    :cond_c
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_4
.end method

.method private static createHwStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Lhuawei/android/animation/HwStateListAnimator;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1179
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwStateListAnimator()Lhuawei/android/animation/HwStateListAnimator;

    move-result-object v7

    .line 1182
    .local v7, "stateListAnimator":Lhuawei/android/animation/HwStateListAnimator;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 1183
    .local v9, "type":I
    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 1186
    :pswitch_0
    return-object v7

    .line 1190
    :pswitch_1
    const/4 v1, 0x0

    .line 1191
    .local v1, "animator":Landroid/animation/Animator;
    const-string/jumbo v10, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1192
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 1193
    .local v3, "attributeCount":I
    new-array v8, v3, [I

    .line 1194
    .local v8, "states":[I
    const/4 v5, 0x0

    .line 1195
    .local v5, "stateIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v6, v5

    .end local v5    # "stateIndex":I
    .local v6, "stateIndex":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 1196
    invoke-interface {p2, v4}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v2

    .line 1197
    .local v2, "attrName":I
    const v10, 0x10101cd

    if-ne v2, v10, :cond_1

    .line 1198
    const/4 v10, 0x0

    invoke-interface {p2, v4, v10}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v0

    .line 1199
    .local v0, "animId":I
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    move v5, v6

    .line 1195
    .end local v0    # "animId":I
    .end local v2    # "attrName":I
    .end local v6    # "stateIndex":I
    .restart local v5    # "stateIndex":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5    # "stateIndex":I
    .restart local v6    # "stateIndex":I
    goto :goto_1

    .line 1201
    .restart local v2    # "attrName":I
    :cond_1
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "stateIndex":I
    .restart local v5    # "stateIndex":I
    const/4 v10, 0x0

    invoke-interface {p2, v4, v10}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    if-eqz v10, :cond_2

    .end local v2    # "attrName":I
    :goto_3
    aput v2, v8, v6

    goto :goto_2

    .restart local v2    # "attrName":I
    :cond_2
    neg-int v2, v2

    goto :goto_3

    .line 1206
    .end local v2    # "attrName":I
    .end local v5    # "stateIndex":I
    .restart local v6    # "stateIndex":I
    :cond_3
    if-nez v1, :cond_4

    .line 1207
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v10, v11, p1, v12}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v1

    .line 1211
    :cond_4
    if-nez v1, :cond_5

    .line 1212
    new-instance v10, Landroid/content/res/Resources$NotFoundException;

    const-string v11, "animation state item must have a valid animation"

    invoke-direct {v10, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1215
    :cond_5
    invoke-static {v8, v6}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v10

    invoke-interface {v7, v10, v1}, Lhuawei/android/animation/HwStateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto :goto_0

    .line 1183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .locals 2
    .param p0, "sampleKeyframe"    # Landroid/animation/Keyframe;
    .param p1, "fraction"    # F

    .prologue
    .line 943
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0
.end method

.method private static createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v7, Landroid/animation/StateListAnimator;

    invoke-direct {v7}, Landroid/animation/StateListAnimator;-><init>()V

    .line 211
    .local v7, "stateListAnimator":Landroid/animation/StateListAnimator;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 212
    .local v9, "type":I
    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 215
    :pswitch_0
    return-object v7

    .line 219
    :pswitch_1
    const/4 v1, 0x0

    .line 220
    .local v1, "animator":Landroid/animation/Animator;
    const-string/jumbo v10, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 221
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 222
    .local v3, "attributeCount":I
    new-array v8, v3, [I

    .line 223
    .local v8, "states":[I
    const/4 v5, 0x0

    .line 224
    .local v5, "stateIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v6, v5

    .end local v5    # "stateIndex":I
    .local v6, "stateIndex":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 225
    invoke-interface {p2, v4}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v2

    .line 226
    .local v2, "attrName":I
    const v10, 0x10101cd

    if-ne v2, v10, :cond_1

    .line 227
    const/4 v10, 0x0

    invoke-interface {p2, v4, v10}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v0

    .line 228
    .local v0, "animId":I
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    move v5, v6

    .line 224
    .end local v0    # "animId":I
    .end local v2    # "attrName":I
    .end local v6    # "stateIndex":I
    .restart local v5    # "stateIndex":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5    # "stateIndex":I
    .restart local v6    # "stateIndex":I
    goto :goto_1

    .line 230
    .restart local v2    # "attrName":I
    :cond_1
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "stateIndex":I
    .restart local v5    # "stateIndex":I
    const/4 v10, 0x0

    invoke-interface {p2, v4, v10}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    if-eqz v10, :cond_2

    .end local v2    # "attrName":I
    :goto_3
    aput v2, v8, v6

    goto :goto_2

    .restart local v2    # "attrName":I
    :cond_2
    neg-int v2, v2

    goto :goto_3

    .line 235
    .end local v2    # "attrName":I
    .end local v5    # "stateIndex":I
    .restart local v6    # "stateIndex":I
    :cond_3
    if-nez v1, :cond_4

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v10, v11, p1, v12}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v1

    .line 240
    :cond_4
    if-nez v1, :cond_5

    .line 241
    new-instance v10, Landroid/content/res/Resources$NotFoundException;

    const-string v11, "animation state item must have a valid animation"

    invoke-direct {v10, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 244
    :cond_5
    invoke-static {v8, v6}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v10

    invoke-virtual {v7, v10, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .locals 5
    .param p0, "keyframes"    # [Landroid/animation/Keyframe;
    .param p1, "gap"    # F
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 970
    sub-int v3, p3, p2

    add-int/lit8 v0, v3, 0x2

    .line 971
    .local v0, "count":I
    int-to-float v3, v0

    div-float v2, p1, v3

    .line 972
    .local v2, "increment":F
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-gt v1, p3, :cond_0

    .line 973
    aget-object v3, p0, v1

    add-int/lit8 v4, v1, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 972
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 975
    :cond_0
    return-void
.end method

.method private static dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .param p0, "keyframes"    # [Ljava/lang/Object;
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 840
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 851
    :cond_0
    return-void

    .line 843
    :cond_1
    const-string v3, "AnimatorInflater"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    array-length v0, p0

    .line 845
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 846
    aget-object v2, p0, v1

    check-cast v2, Landroid/animation/Keyframe;

    .line 847
    .local v2, "keyframe":Landroid/animation/Keyframe;
    const-string v4, "AnimatorInflater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keyframe "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": fraction "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    const/4 v6, 0x0

    cmpg-float v3, v3, v6

    if-gez v3, :cond_2

    const-string/jumbo v3, "null"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", value : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 847
    :cond_2
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "null"

    goto :goto_2
.end method

.method private static getChangingConfigs(Landroid/content/res/Resources;I)I
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 1097
    sget-object v1, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    monitor-enter v1

    .line 1098
    :try_start_0
    sget-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1099
    sget-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    monitor-exit v1

    return v0

    .line 1100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .locals 21
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueType"    # I
    .param p2, "valueFromId"    # I
    .param p3, "valueToId"    # I
    .param p4, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 305
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .line 306
    .local v14, "tvFrom":Landroid/util/TypedValue;
    if-eqz v14, :cond_4

    const/4 v7, 0x1

    .line 307
    .local v7, "hasFrom":Z
    :goto_0
    if-eqz v7, :cond_5

    iget v5, v14, Landroid/util/TypedValue;->type:I

    .line 308
    .local v5, "fromType":I
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 309
    .local v15, "tvTo":Landroid/util/TypedValue;
    if-eqz v15, :cond_6

    const/4 v8, 0x1

    .line 310
    .local v8, "hasTo":Z
    :goto_2
    if-eqz v8, :cond_7

    iget v13, v15, Landroid/util/TypedValue;->type:I

    .line 312
    .local v13, "toType":I
    :goto_3
    const/16 v18, 0x4

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 314
    if-eqz v7, :cond_0

    invoke-static {v5}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v18

    if-nez v18, :cond_1

    :cond_0
    if-eqz v8, :cond_8

    invoke-static {v13}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 315
    :cond_1
    const/16 p1, 0x3

    .line 321
    :cond_2
    :goto_4
    if-nez p1, :cond_9

    const/4 v6, 0x1

    .line 323
    .local v6, "getFloats":Z
    :goto_5
    const/4 v11, 0x0

    .line 325
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 326
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, "fromString":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 328
    .local v12, "toString":Ljava/lang/String;
    invoke-static {v4}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v9

    .line 329
    .local v9, "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    invoke-static {v12}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v10

    .line 331
    .local v10, "nodesTo":[Landroid/util/PathParser$PathDataNode;
    if-nez v9, :cond_3

    if-eqz v10, :cond_b

    .line 332
    :cond_3
    if-eqz v9, :cond_d

    .line 333
    new-instance v3, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-static {v9}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>([Landroid/util/PathParser$PathDataNode;)V

    .line 335
    .local v3, "evaluator":Landroid/animation/TypeEvaluator;
    if-eqz v10, :cond_c

    .line 336
    invoke-static {v9, v10}, Landroid/util/PathParser;->canMorph([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 337
    new-instance v18, Landroid/view/InflateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " Can\'t morph from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 306
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v5    # "fromType":I
    .end local v6    # "getFloats":Z
    .end local v7    # "hasFrom":Z
    .end local v8    # "hasTo":Z
    .end local v9    # "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    .end local v10    # "nodesTo":[Landroid/util/PathParser$PathDataNode;
    .end local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "toString":Ljava/lang/String;
    .end local v13    # "toType":I
    .end local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 307
    .restart local v7    # "hasFrom":Z
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 309
    .restart local v5    # "fromType":I
    .restart local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 310
    .restart local v8    # "hasTo":Z
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 317
    .restart local v13    # "toType":I
    :cond_8
    const/16 p1, 0x0

    goto :goto_4

    .line 321
    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    .line 340
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v4    # "fromString":Ljava/lang/String;
    .restart local v6    # "getFloats":Z
    .restart local v9    # "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    .restart local v10    # "nodesTo":[Landroid/util/PathParser$PathDataNode;
    .restart local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v12    # "toString":Ljava/lang/String;
    :cond_a
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v9, v18, v19

    const/16 v19, 0x1

    aput-object v10, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 429
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v9    # "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    .end local v10    # "nodesTo":[Landroid/util/PathParser$PathDataNode;
    .end local v12    # "toString":Ljava/lang/String;
    :cond_b
    :goto_6
    return-object v11

    .line 343
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v4    # "fromString":Ljava/lang/String;
    .restart local v9    # "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    .restart local v10    # "nodesTo":[Landroid/util/PathParser$PathDataNode;
    .restart local v12    # "toString":Ljava/lang/String;
    :cond_c
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v9, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_6

    .line 346
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_d
    if-eqz v10, :cond_b

    .line 347
    new-instance v3, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-static {v10}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>([Landroid/util/PathParser$PathDataNode;)V

    .line 349
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v10, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_6

    .line 354
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v9    # "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    .end local v10    # "nodesTo":[Landroid/util/PathParser$PathDataNode;
    .end local v12    # "toString":Ljava/lang/String;
    :cond_e
    const/4 v3, 0x0

    .line 356
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 358
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v3

    .line 360
    :cond_f
    if-eqz v6, :cond_16

    .line 363
    if-eqz v7, :cond_14

    .line 364
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v5, v0, :cond_11

    .line 365
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v16

    .line 369
    .local v16, "valueFrom":F
    :goto_7
    if-eqz v8, :cond_13

    .line 370
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_12

    .line 371
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 375
    .local v17, "valueTo":F
    :goto_8
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    const/16 v19, 0x1

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 424
    .end local v16    # "valueFrom":F
    .end local v17    # "valueTo":F
    :cond_10
    :goto_9
    if-eqz v11, :cond_b

    if-eqz v3, :cond_b

    .line 425
    invoke-virtual {v11, v3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto/16 :goto_6

    .line 367
    :cond_11
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    .restart local v16    # "valueFrom":F
    goto :goto_7

    .line 373
    :cond_12
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    .restart local v17    # "valueTo":F
    goto :goto_8

    .line 378
    .end local v17    # "valueTo":F
    :cond_13
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_9

    .line 381
    .end local v16    # "valueFrom":F
    :cond_14
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_15

    .line 382
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 386
    .restart local v17    # "valueTo":F
    :goto_a
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_9

    .line 384
    .end local v17    # "valueTo":F
    :cond_15
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    .restart local v17    # "valueTo":F
    goto :goto_a

    .line 391
    .end local v17    # "valueTo":F
    :cond_16
    if-eqz v7, :cond_1c

    .line 392
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v5, v0, :cond_17

    .line 393
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 399
    .local v16, "valueFrom":I
    :goto_b
    if-eqz v8, :cond_1b

    .line 400
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_19

    .line 401
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 407
    .local v17, "valueTo":I
    :goto_c
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    const/16 v19, 0x1

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto/16 :goto_9

    .line 394
    .end local v16    # "valueFrom":I
    .end local v17    # "valueTo":I
    :cond_17
    invoke-static {v5}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 395
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v16

    .restart local v16    # "valueFrom":I
    goto :goto_b

    .line 397
    .end local v16    # "valueFrom":I
    :cond_18
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .restart local v16    # "valueFrom":I
    goto :goto_b

    .line 402
    :cond_19
    invoke-static {v13}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 403
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_c

    .line 405
    .end local v17    # "valueTo":I
    :cond_1a
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_c

    .line 409
    .end local v17    # "valueTo":I
    :cond_1b
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto/16 :goto_9

    .line 412
    .end local v16    # "valueFrom":I
    :cond_1c
    if-eqz v8, :cond_10

    .line 413
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_1d

    .line 414
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 420
    .restart local v17    # "valueTo":I
    :goto_d
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto/16 :goto_9

    .line 415
    .end local v17    # "valueTo":I
    :cond_1d
    invoke-static {v13}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 416
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_d

    .line 418
    .end local v17    # "valueTo":I
    :cond_1e
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_d
.end method

.method private static inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .locals 8
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueFromId"    # I
    .param p2, "valueToId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 822
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 823
    .local v4, "tvFrom":Landroid/util/TypedValue;
    if-eqz v4, :cond_2

    move v1, v2

    .line 824
    .local v1, "hasFrom":Z
    :goto_0
    if-eqz v1, :cond_3

    iget v0, v4, Landroid/util/TypedValue;->type:I

    .line 825
    .local v0, "fromType":I
    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 826
    .local v5, "tvTo":Landroid/util/TypedValue;
    if-eqz v5, :cond_4

    .line 827
    .local v2, "hasTo":Z
    :goto_2
    if-eqz v2, :cond_5

    iget v3, v5, Landroid/util/TypedValue;->type:I

    .line 831
    .local v3, "toType":I
    :goto_3
    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    if-eqz v2, :cond_6

    invoke-static {v3}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 832
    :cond_1
    const/4 v6, 0x3

    .line 836
    .local v6, "valueType":I
    :goto_4
    return v6

    .end local v0    # "fromType":I
    .end local v1    # "hasFrom":Z
    .end local v2    # "hasTo":Z
    .end local v3    # "toType":I
    .end local v5    # "tvTo":Landroid/util/TypedValue;
    .end local v6    # "valueType":I
    :cond_2
    move v1, v7

    .line 823
    goto :goto_0

    .restart local v1    # "hasFrom":Z
    :cond_3
    move v0, v7

    .line 824
    goto :goto_1

    .restart local v0    # "fromType":I
    .restart local v5    # "tvTo":Landroid/util/TypedValue;
    :cond_4
    move v2, v7

    .line 826
    goto :goto_2

    .restart local v2    # "hasTo":Z
    :cond_5
    move v3, v7

    .line 827
    goto :goto_3

    .line 834
    .restart local v3    # "toType":I
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "valueType":I
    goto :goto_4
.end method

.method private static inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 801
    if-eqz p1, :cond_1

    .line 802
    sget-object v4, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p1, p2, v4, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 807
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 808
    .local v2, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 811
    .local v1, "hasValue":Z
    :cond_0
    if-eqz v1, :cond_2

    iget v4, v2, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 812
    const/4 v3, 0x3

    .line 816
    .local v3, "valueType":I
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 817
    return v3

    .line 804
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "hasValue":Z
    .end local v2    # "keyframeValue":Landroid/util/TypedValue;
    .end local v3    # "valueType":I
    :cond_1
    sget-object v4, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 814
    .restart local v1    # "hasValue":Z
    .restart local v2    # "keyframeValue":Landroid/util/TypedValue;
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "valueType":I
    goto :goto_1
.end method

.method private static isColorType(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1104
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 105
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .param p3, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v4

    .line 113
    .local v4, "animatorCache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/Animator;>;"
    int-to-long v10, p2

    invoke-virtual {v4, v10, v11, p1}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 114
    .local v2, "animator":Landroid/animation/Animator;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 152
    .end local v2    # "animator":Landroid/animation/Animator;
    .local v3, "animator":Landroid/animation/Animator;
    :goto_0
    return-object v3

    .line 122
    .end local v3    # "animator":Landroid/animation/Animator;
    .restart local v2    # "animator":Landroid/animation/Animator;
    :cond_0
    const/4 v7, 0x0

    .line 124
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 125
    invoke-static {p0, p1, v7, p3}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v2

    .line 126
    if-eqz v2, :cond_1

    .line 127
    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    .line 128
    invoke-virtual {v2}, Landroid/animation/Animator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v5

    .line 129
    .local v5, "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/Animator;>;"
    if-eqz v5, :cond_1

    .line 133
    int-to-long v10, p2

    invoke-virtual {v4, v10, v11, p1, v5}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v5, p0, p1}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/animation/Animator;

    move-object v2, v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .end local v5    # "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/Animator;>;"
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    move-object v3, v2

    .end local v2    # "animator":Landroid/animation/Animator;
    .restart local v3    # "animator":Landroid/animation/Animator;
    goto :goto_0

    .line 139
    .end local v3    # "animator":Landroid/animation/Animator;
    .restart local v2    # "animator":Landroid/animation/Animator;
    :catch_0
    move-exception v6

    .line 140
    .local v6, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t load animation resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 143
    .local v8, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v8, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 144
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .end local v6    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v8    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v9

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw v9

    .line 145
    :catch_1
    move-exception v6

    .line 146
    .local v6, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t load animation resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 149
    .restart local v8    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v8, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 150
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "anim"    # Landroid/animation/ValueAnimator;
    .param p4, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1052
    const/4 v0, 0x0

    .line 1053
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 1055
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    if-eqz p1, :cond_5

    .line 1056
    sget-object v4, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1062
    :goto_0
    if-eqz p3, :cond_0

    .line 1063
    if-eqz p1, :cond_6

    .line 1064
    sget-object v4, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1069
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    .line 1072
    :cond_0
    if-nez p3, :cond_1

    .line 1073
    new-instance p3, Landroid/animation/ValueAnimator;

    .end local p3    # "anim":Landroid/animation/ValueAnimator;
    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    .line 1075
    .restart local p3    # "anim":Landroid/animation/ValueAnimator;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    .line 1077
    invoke-static {p3, v0, v1, p4}, Landroid/animation/AnimatorInflater;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V

    .line 1079
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 1080
    .local v3, "resID":I
    if-lez v3, :cond_3

    .line 1081
    invoke-static {p0, p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 1082
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    instance-of v4, v2, Landroid/view/animation/BaseInterpolator;

    if-eqz v4, :cond_2

    move-object v4, v2

    .line 1083
    check-cast v4, Landroid/view/animation/BaseInterpolator;

    invoke-virtual {v4}, Landroid/view/animation/BaseInterpolator;->getChangingConfiguration()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    .line 1086
    :cond_2
    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1089
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1090
    if-eqz v1, :cond_4

    .line 1091
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1093
    :cond_4
    return-object p3

    .line 1058
    .end local v3    # "resID":I
    :cond_5
    sget-object v4, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 1067
    :cond_6
    sget-object v4, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_1
.end method

.method public static loadHwStateListAnimator(Landroid/content/Context;I)Lhuawei/android/animation/HwStateListAnimator;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1134
    .local v3, "resources":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 1136
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 1137
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    invoke-static {p0, v2, v5}, Landroid/animation/AnimatorInflater;->createHwStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Lhuawei/android/animation/HwStateListAnimator;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1168
    .local v0, "animator":Lhuawei/android/animation/HwStateListAnimator;
    if-eqz v2, :cond_0

    .line 1169
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v0

    .line 1151
    .end local v0    # "animator":Lhuawei/android/animation/HwStateListAnimator;
    :catch_0
    move-exception v1

    .line 1152
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1157
    .local v4, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1158
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1168
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_1

    .line 1169
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v5

    .line 1159
    :catch_1
    move-exception v1

    .line 1160
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1165
    .restart local v4    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1166
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;
    .locals 12
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 982
    if-eqz p1, :cond_2

    .line 983
    sget-object v9, Lcom/android/internal/R$styleable;->Keyframe:[I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1, p2, v9, v10, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 988
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    const/4 v5, 0x0

    .line 990
    .local v5, "keyframe":Landroid/animation/Keyframe;
    const/4 v9, 0x3

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 992
    .local v1, "fraction":F
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 993
    .local v6, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v6, :cond_3

    const/4 v2, 0x1

    .line 994
    .local v2, "hasValue":Z
    :goto_1
    const/4 v9, 0x4

    if-ne p3, v9, :cond_0

    .line 997
    if-eqz v2, :cond_4

    iget v9, v6, Landroid/util/TypedValue;->type:I

    invoke-static {v9}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 998
    const/4 p3, 0x3

    .line 1004
    :cond_0
    :goto_2
    if-eqz v2, :cond_5

    .line 1005
    packed-switch p3, :pswitch_data_0

    .line 1021
    :goto_3
    :pswitch_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1022
    .local v7, "resID":I
    if-lez v7, :cond_1

    .line 1023
    invoke-static {p0, p1, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 1024
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v5, v4}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1026
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1028
    return-object v5

    .line 985
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "fraction":F
    .end local v2    # "hasValue":Z
    .end local v5    # "keyframe":Landroid/animation/Keyframe;
    .end local v6    # "keyframeValue":Landroid/util/TypedValue;
    .end local v7    # "resID":I
    :cond_2
    sget-object v9, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p0, p2, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 993
    .restart local v1    # "fraction":F
    .restart local v5    # "keyframe":Landroid/animation/Keyframe;
    .restart local v6    # "keyframeValue":Landroid/util/TypedValue;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 1000
    .restart local v2    # "hasValue":Z
    :cond_4
    const/4 p3, 0x0

    goto :goto_2

    .line 1007
    :pswitch_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 1008
    .local v8, "value":F
    invoke-static {v1, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 1009
    goto :goto_3

    .line 1012
    .end local v8    # "value":F
    :pswitch_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 1013
    .local v3, "intValue":I
    invoke-static {v1, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v5

    goto :goto_3

    .line 1017
    .end local v3    # "intValue":I
    :cond_5
    if-nez p3, :cond_6

    invoke-static {v1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v5

    :goto_4
    goto :goto_3

    :cond_6
    invoke-static {v1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v5

    goto :goto_4

    .line 1005
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1033
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 1035
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-static {p0, p1, p2, v0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    .line 1037
    return-object v0
.end method

.method private static loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .locals 22
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "propertyName"    # Ljava/lang/String;
    .param p4, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 858
    const/16 v19, 0x0

    .line 859
    .local v19, "value":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x0

    .line 862
    .local v13, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .local v18, "type":I
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 864
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 865
    .local v15, "name":Ljava/lang/String;
    const-string/jumbo v20, "keyframe"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 866
    const/16 v20, 0x4

    move/from16 v0, p4

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 867
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/AnimatorInflater;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I

    move-result p4

    .line 869
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Landroid/animation/AnimatorInflater;->loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;

    move-result-object v11

    .line 870
    .local v11, "keyframe":Landroid/animation/Keyframe;
    if-eqz v11, :cond_3

    .line 871
    if-nez v13, :cond_2

    .line 872
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 874
    .restart local v13    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    :cond_2
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 881
    .end local v11    # "keyframe":Landroid/animation/Keyframe;
    .end local v15    # "name":Ljava/lang/String;
    :cond_4
    if-eqz v13, :cond_f

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "count":I
    if-lez v4, :cond_f

    .line 887
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe;

    .line 888
    .local v7, "firstKeyframe":Landroid/animation/Keyframe;
    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/animation/Keyframe;

    .line 889
    .local v14, "lastKeyframe":Landroid/animation/Keyframe;
    invoke-virtual {v14}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    .line 890
    .local v5, "endFraction":F
    const/high16 v20, 0x3f800000    # 1.0f

    cmpg-float v20, v5, v20

    if-gez v20, :cond_5

    .line 891
    const/16 v20, 0x0

    cmpg-float v20, v5, v20

    if-gez v20, :cond_8

    .line 892
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 898
    :cond_5
    :goto_1
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    move-result v16

    .line 899
    .local v16, "startFraction":F
    const/16 v20, 0x0

    cmpl-float v20, v16, v20

    if-eqz v20, :cond_6

    .line 900
    const/16 v20, 0x0

    cmpg-float v20, v16, v20

    if-gez v20, :cond_9

    .line 901
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 907
    :cond_6
    :goto_2
    new-array v12, v4, [Landroid/animation/Keyframe;

    .line 908
    .local v12, "keyframeArray":[Landroid/animation/Keyframe;
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 909
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-ge v9, v4, :cond_e

    .line 910
    aget-object v11, v12, v9

    .line 911
    .restart local v11    # "keyframe":Landroid/animation/Keyframe;
    invoke-virtual {v11}, Landroid/animation/Keyframe;->getFraction()F

    move-result v20

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_7

    .line 912
    if-nez v9, :cond_a

    .line 913
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 909
    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 894
    .end local v9    # "i":I
    .end local v11    # "keyframe":Landroid/animation/Keyframe;
    .end local v12    # "keyframeArray":[Landroid/animation/Keyframe;
    .end local v16    # "startFraction":F
    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v21

    invoke-static {v14, v0}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 895
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 903
    .restart local v16    # "startFraction":F
    :cond_9
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v7, v0}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 904
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 914
    .restart local v9    # "i":I
    .restart local v11    # "keyframe":Landroid/animation/Keyframe;
    .restart local v12    # "keyframeArray":[Landroid/animation/Keyframe;
    :cond_a
    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_b

    .line 915
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_4

    .line 919
    :cond_b
    move/from16 v17, v9

    .line 920
    .local v17, "startIndex":I
    move v6, v9

    .line 921
    .local v6, "endIndex":I
    add-int/lit8 v10, v17, 0x1

    .local v10, "j":I
    :goto_5
    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    if-ge v10, v0, :cond_c

    .line 922
    aget-object v20, v12, v10

    invoke-virtual/range {v20 .. v20}, Landroid/animation/Keyframe;->getFraction()F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_d

    .line 927
    :cond_c
    add-int/lit8 v20, v6, 0x1

    aget-object v20, v12, v20

    invoke-virtual/range {v20 .. v20}, Landroid/animation/Keyframe;->getFraction()F

    move-result v20

    add-int/lit8 v21, v17, -0x1

    aget-object v21, v12, v21

    invoke-virtual/range {v21 .. v21}, Landroid/animation/Keyframe;->getFraction()F

    move-result v21

    sub-float v8, v20, v21

    .line 929
    .local v8, "gap":F
    move/from16 v0, v17

    invoke-static {v12, v8, v0, v6}, Landroid/animation/AnimatorInflater;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    goto :goto_4

    .line 925
    .end local v8    # "gap":F
    :cond_d
    move v6, v10

    .line 921
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 933
    .end local v6    # "endIndex":I
    .end local v10    # "j":I
    .end local v11    # "keyframe":Landroid/animation/Keyframe;
    .end local v17    # "startIndex":I
    :cond_e
    move-object/from16 v0, p3

    invoke-static {v0, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v19

    .line 934
    const/16 v20, 0x3

    move/from16 v0, p4

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 935
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 939
    .end local v4    # "count":I
    .end local v5    # "endFraction":F
    .end local v7    # "firstKeyframe":Landroid/animation/Keyframe;
    .end local v9    # "i":I
    .end local v12    # "keyframeArray":[Landroid/animation/Keyframe;
    .end local v14    # "lastKeyframe":Landroid/animation/Keyframe;
    .end local v16    # "startFraction":F
    :cond_f
    return-object v19
.end method

.method public static loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 159
    .local v8, "resources":Landroid/content/res/Resources;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v4

    .line 161
    .local v4, "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/StateListAnimator;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    .line 162
    .local v10, "theme":Landroid/content/res/Resources$Theme;
    int-to-long v12, p1

    invoke-virtual {v4, v12, v13, v10}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/StateListAnimator;

    .line 163
    .local v2, "animator":Landroid/animation/StateListAnimator;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 199
    .end local v2    # "animator":Landroid/animation/StateListAnimator;
    .local v3, "animator":Landroid/animation/StateListAnimator;
    :goto_0
    return-object v3

    .line 166
    .end local v3    # "animator":Landroid/animation/StateListAnimator;
    .restart local v2    # "animator":Landroid/animation/StateListAnimator;
    :cond_0
    const/4 v7, 0x0

    .line 168
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 169
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    invoke-static {p0, v7, v11}, Landroid/animation/AnimatorInflater;->createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;

    move-result-object v2

    .line 170
    if-eqz v2, :cond_1

    .line 171
    invoke-static {v8, p1}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/animation/StateListAnimator;->appendChangingConfigurations(I)V

    .line 172
    invoke-virtual {v2}, Landroid/animation/StateListAnimator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v5

    .line 174
    .local v5, "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/StateListAnimator;>;"
    if-eqz v5, :cond_1

    .line 175
    int-to-long v12, p1

    invoke-virtual {v4, v12, v13, v10, v5}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v5, v8, v10}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/animation/StateListAnimator;

    move-object v2, v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .end local v5    # "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/StateListAnimator;>;"
    :cond_1
    if-eqz v7, :cond_2

    .line 199
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    move-object v3, v2

    .end local v2    # "animator":Landroid/animation/StateListAnimator;
    .restart local v3    # "animator":Landroid/animation/StateListAnimator;
    goto :goto_0

    .line 181
    .end local v3    # "animator":Landroid/animation/StateListAnimator;
    .restart local v2    # "animator":Landroid/animation/StateListAnimator;
    :catch_0
    move-exception v6

    .line 182
    .local v6, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 187
    .local v9, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v9, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 188
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    .end local v6    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v9    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v11

    if-eqz v7, :cond_3

    .line 199
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw v11

    .line 189
    :catch_1
    move-exception v6

    .line 190
    .local v6, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 195
    .restart local v9    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v9, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 196
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .locals 14
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    const/4 v9, 0x0

    .line 745
    .local v9, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .local v7, "type":I
    const/4 v11, 0x3

    if-eq v7, v11, :cond_6

    const/4 v11, 0x1

    if-eq v7, v11, :cond_6

    .line 748
    const/4 v11, 0x2

    if-eq v7, v11, :cond_0

    .line 749
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 753
    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 755
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v11, "propertyValuesHolder"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 757
    if-eqz p1, :cond_5

    .line 758
    sget-object v11, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {p1, v0, v11, v12, v13}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 762
    .local v1, "a":Landroid/content/res/TypedArray;
    :goto_1
    const/4 v11, 0x3

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 763
    .local v5, "propertyName":Ljava/lang/String;
    const/4 v11, 0x2

    const/4 v12, 0x4

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 766
    .local v8, "valueType":I
    move-object/from16 v0, p2

    invoke-static {p0, p1, v0, v5, v8}, Landroid/animation/AnimatorInflater;->loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 767
    .local v6, "pvh":Landroid/animation/PropertyValuesHolder;
    if-nez v6, :cond_1

    .line 768
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v1, v8, v11, v12, v5}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 772
    :cond_1
    if-eqz v6, :cond_3

    .line 773
    if-nez v9, :cond_2

    .line 774
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 776
    .restart local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :cond_2
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 781
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v6    # "pvh":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "valueType":I
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 760
    :cond_5
    sget-object v11, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .restart local v1    # "a":Landroid/content/res/TypedArray;
    goto :goto_1

    .line 784
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "name":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    .line 785
    .local v10, "valuesArray":[Landroid/animation/PropertyValuesHolder;
    if-eqz v9, :cond_7

    .line 786
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 787
    .local v2, "count":I
    new-array v10, v2, [Landroid/animation/PropertyValuesHolder;

    .line 788
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_7

    .line 789
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/PropertyValuesHolder;

    aput-object v11, v10, v3

    .line 788
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 792
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_7
    return-object v10
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V
    .locals 9
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p3, "pixelSize"    # F

    .prologue
    .line 442
    const/4 v6, 0x1

    const/16 v7, 0x12c

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    int-to-long v0, v6

    .line 444
    .local v0, "duration":J
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    int-to-long v4, v6

    .line 446
    .local v4, "startDelay":J
    const/4 v6, 0x7

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 448
    .local v3, "valueType":I
    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    .line 449
    const/4 v6, 0x5

    const/4 v7, 0x6

    invoke-static {p1, v6, v7}, Landroid/animation/AnimatorInflater;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    move-result v3

    .line 452
    :cond_0
    const/4 v6, 0x5

    const/4 v7, 0x6

    const-string v8, ""

    invoke-static {p1, v3, v6, v7, v8}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 454
    .local v2, "pvh":Landroid/animation/PropertyValuesHolder;
    if-eqz v2, :cond_1

    .line 455
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 458
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 459
    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 461
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 462
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 465
    :cond_2
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 466
    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 471
    :cond_3
    if-eqz p2, :cond_4

    .line 472
    if-nez v3, :cond_5

    const/4 v6, 0x1

    :goto_0
    invoke-static {p0, p2, v6, p3}, Landroid/animation/AnimatorInflater;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZF)V

    .line 475
    :cond_4
    return-void

    .line 472
    :cond_5
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static setupAnimatorForPath(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;)Landroid/animation/TypeEvaluator;
    .locals 8
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "fromString":Ljava/lang/String;
    const/4 v5, 0x6

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 489
    .local v4, "toString":Ljava/lang/String;
    invoke-static {v1}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v2

    .line 490
    .local v2, "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    invoke-static {v4}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v3

    .line 492
    .local v3, "nodesTo":[Landroid/util/PathParser$PathDataNode;
    if-eqz v2, :cond_3

    .line 493
    if-eqz v3, :cond_0

    .line 494
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    aput-object v3, v5, v7

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 495
    invoke-static {v2, v3}, Landroid/util/PathParser;->canMorph([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 496
    new-instance v5, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Can\'t morph from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 500
    :cond_0
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 502
    :cond_1
    new-instance v0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    .end local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    invoke-static {v2}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>([Landroid/util/PathParser$PathDataNode;)V

    .line 512
    .restart local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_2
    :goto_0
    return-object v0

    .line 503
    :cond_3
    if-eqz v3, :cond_2

    .line 504
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 505
    new-instance v0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    .end local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    invoke-static {v3}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>([Landroid/util/PathParser$PathDataNode;)V

    .restart local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    goto :goto_0
.end method

.method private static setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZF)V
    .locals 16
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "getFloats"    # Z
    .param p3, "pixelSize"    # F

    .prologue
    .line 526
    move-object/from16 v3, p0

    check-cast v3, Landroid/animation/ObjectAnimator;

    .line 527
    .local v3, "oa":Landroid/animation/ObjectAnimator;
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 537
    .local v5, "pathData":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 538
    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 540
    .local v7, "propertyXName":Ljava/lang/String;
    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 543
    .local v8, "propertyYName":Ljava/lang/String;
    if-nez v7, :cond_0

    if-nez v8, :cond_0

    .line 544
    new-instance v13, Landroid/view/InflateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 547
    :cond_0
    invoke-static {v5}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v4

    .line 548
    .local v4, "path":Landroid/graphics/Path;
    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v1, v13, p3

    .line 549
    .local v1, "error":F
    invoke-static {v4, v1}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;

    move-result-object v2

    .line 552
    .local v2, "keyframeSet":Landroid/animation/PathKeyframes;
    if-eqz p2, :cond_3

    .line 553
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v10

    .line 554
    .local v10, "xKeyframes":Landroid/animation/Keyframes;
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v12

    .line 559
    .local v12, "yKeyframes":Landroid/animation/Keyframes;
    :goto_0
    const/4 v9, 0x0

    .line 560
    .local v9, "x":Landroid/animation/PropertyValuesHolder;
    const/4 v11, 0x0

    .line 561
    .local v11, "y":Landroid/animation/PropertyValuesHolder;
    if-eqz v7, :cond_1

    .line 562
    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 564
    :cond_1
    if-eqz v8, :cond_2

    .line 565
    invoke-static {v8, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 567
    :cond_2
    if-nez v9, :cond_4

    .line 568
    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 580
    .end local v1    # "error":F
    .end local v2    # "keyframeSet":Landroid/animation/PathKeyframes;
    .end local v4    # "path":Landroid/graphics/Path;
    .end local v7    # "propertyXName":Ljava/lang/String;
    .end local v8    # "propertyYName":Ljava/lang/String;
    .end local v9    # "x":Landroid/animation/PropertyValuesHolder;
    .end local v10    # "xKeyframes":Landroid/animation/Keyframes;
    .end local v11    # "y":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "yKeyframes":Landroid/animation/Keyframes;
    :goto_1
    return-void

    .line 556
    .restart local v1    # "error":F
    .restart local v2    # "keyframeSet":Landroid/animation/PathKeyframes;
    .restart local v4    # "path":Landroid/graphics/Path;
    .restart local v7    # "propertyXName":Ljava/lang/String;
    .restart local v8    # "propertyYName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v10

    .line 557
    .restart local v10    # "xKeyframes":Landroid/animation/Keyframes;
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v12

    .restart local v12    # "yKeyframes":Landroid/animation/Keyframes;
    goto :goto_0

    .line 569
    .restart local v9    # "x":Landroid/animation/PropertyValuesHolder;
    .restart local v11    # "y":Landroid/animation/PropertyValuesHolder;
    :cond_4
    if-nez v11, :cond_5

    .line 570
    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1

    .line 572
    :cond_5
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v14, 0x1

    aput-object v11, v13, v14

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1

    .line 576
    .end local v1    # "error":F
    .end local v2    # "keyframeSet":Landroid/animation/PathKeyframes;
    .end local v4    # "path":Landroid/graphics/Path;
    .end local v7    # "propertyXName":Ljava/lang/String;
    .end local v8    # "propertyYName":Ljava/lang/String;
    .end local v9    # "x":Landroid/animation/PropertyValuesHolder;
    .end local v10    # "xKeyframes":Landroid/animation/Keyframes;
    .end local v11    # "y":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "yKeyframes":Landroid/animation/Keyframes;
    :cond_6
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 578
    .local v6, "propertyName":Ljava/lang/String;
    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static setupValues(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZZIZI)V
    .locals 6
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "getFloats"    # Z
    .param p3, "hasFrom"    # Z
    .param p4, "fromType"    # I
    .param p5, "hasTo"    # Z
    .param p6, "toType"    # I

    .prologue
    .line 596
    const/4 v1, 0x5

    .line 597
    .local v1, "valueFromIndex":I
    const/4 v3, 0x6

    .line 598
    .local v3, "valueToIndex":I
    if-eqz p2, :cond_6

    .line 601
    if-eqz p3, :cond_4

    .line 602
    const/4 v4, 0x5

    if-ne p4, v4, :cond_1

    .line 603
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 607
    .local v0, "valueFrom":F
    :goto_0
    if-eqz p5, :cond_3

    .line 608
    const/4 v4, 0x5

    if-ne p6, v4, :cond_2

    .line 609
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 613
    .local v2, "valueTo":F
    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v2, v4, v5

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 661
    .end local v0    # "valueFrom":F
    .end local v2    # "valueTo":F
    :cond_0
    :goto_2
    return-void

    .line 605
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .restart local v0    # "valueFrom":F
    goto :goto_0

    .line 611
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .restart local v2    # "valueTo":F
    goto :goto_1

    .line 615
    .end local v2    # "valueTo":F
    :cond_3
    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_2

    .line 618
    .end local v0    # "valueFrom":F
    :cond_4
    const/4 v4, 0x5

    if-ne p6, v4, :cond_5

    .line 619
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 623
    .restart local v2    # "valueTo":F
    :goto_3
    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_2

    .line 621
    .end local v2    # "valueTo":F
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .restart local v2    # "valueTo":F
    goto :goto_3

    .line 628
    .end local v2    # "valueTo":F
    :cond_6
    if-eqz p3, :cond_c

    .line 629
    const/4 v4, 0x5

    if-ne p4, v4, :cond_7

    .line 630
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v0, v4

    .line 636
    .local v0, "valueFrom":I
    :goto_4
    if-eqz p5, :cond_b

    .line 637
    const/4 v4, 0x5

    if-ne p6, v4, :cond_9

    .line 638
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v2, v4

    .line 644
    .local v2, "valueTo":I
    :goto_5
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v2, v4, v5

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_2

    .line 631
    .end local v0    # "valueFrom":I
    .end local v2    # "valueTo":I
    :cond_7
    invoke-static {p4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 632
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .restart local v0    # "valueFrom":I
    goto :goto_4

    .line 634
    .end local v0    # "valueFrom":I
    :cond_8
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .restart local v0    # "valueFrom":I
    goto :goto_4

    .line 639
    :cond_9
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 640
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .restart local v2    # "valueTo":I
    goto :goto_5

    .line 642
    .end local v2    # "valueTo":I
    :cond_a
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .restart local v2    # "valueTo":I
    goto :goto_5

    .line 646
    .end local v2    # "valueTo":I
    :cond_b
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_2

    .line 649
    .end local v0    # "valueFrom":I
    :cond_c
    if-eqz p5, :cond_0

    .line 650
    const/4 v4, 0x5

    if-ne p6, v4, :cond_d

    .line 651
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v2, v4

    .line 657
    .restart local v2    # "valueTo":I
    :goto_6
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_2

    .line 652
    .end local v2    # "valueTo":I
    :cond_d
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 653
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .restart local v2    # "valueTo":I
    goto :goto_6

    .line 655
    .end local v2    # "valueTo":I
    :cond_e
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .restart local v2    # "valueTo":I
    goto :goto_6
.end method

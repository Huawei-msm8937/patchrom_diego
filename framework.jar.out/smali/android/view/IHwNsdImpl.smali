.class public interface abstract Landroid/view/IHwNsdImpl;
.super Ljava/lang/Object;
.source "IHwNsdImpl.java"


# virtual methods
.method public abstract StopSdrForSpecial(Ljava/lang/String;I)Z
.end method

.method public abstract adaptPowerSave(Landroid/view/MotionEvent;)V
.end method

.method public abstract adjNsd(Ljava/lang/String;)V
.end method

.method public abstract checkAdBlock(Landroid/view/View;Ljava/lang/String;)Z
.end method

.method public abstract checkIfNsdSupportCursor()Z
.end method

.method public abstract checkIfNsdSupportLauncher()Z
.end method

.method public abstract checkIfSupportNsd()Z
.end method

.method public abstract checkIs2DSDRCase(Landroid/content/Context;Landroid/view/ViewRootImpl;)Z
.end method

.method public abstract computeSDRRatio(Landroid/content/Context;Landroid/view/View;Landroid/view/View;FFI)F
.end method

.method public abstract computeSDRRatioBase(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)I
.end method

.method public abstract createEventAnalyzed()V
.end method

.method public abstract drawBitmapCursor(ILandroid/widget/TextView;Landroid/graphics/Rect;)Z
.end method

.method public abstract enableNsdSave()V
.end method

.method public abstract getCustAppList(I)[Ljava/lang/String;
.end method

.method public abstract getCustScreenDimDurationLocked(I)I
.end method

.method public abstract getDisplayOrientation(Landroid/widget/TextView;)I
.end method

.method public abstract getTextViewZOrderId(Landroid/view/View$AttachInfo;)I
.end method

.method public abstract initAPS(Landroid/content/Context;II)V
.end method

.method public abstract isAPSReady()Z
.end method

.method public abstract isCase(Landroid/view/View;)Z
.end method

.method public abstract isCursorBlinkCase(Landroid/widget/TextView;Landroid/graphics/Rect;)Z
.end method

.method public abstract isCursorCompleteVisible(Landroid/widget/TextView;Landroid/graphics/Rect;Landroid/view/View$AttachInfo;)Z
.end method

.method public abstract isCursorOpaque(Landroid/widget/TextView;)Z
.end method

.method public abstract isGameProcess(Ljava/lang/String;)Z
.end method

.method public abstract isNeedAppDraw()Z
.end method

.method public abstract isScreenHight(I)Z
.end method

.method public abstract isSupportAPSEventAnalysis()Z
.end method

.method public abstract isSupportAps()Z
.end method

.method public abstract powerCtroll()V
.end method

.method public abstract processCase(Landroid/view/DisplayListCanvas;)V
.end method

.method public abstract releaseNSD()V
.end method

.method public abstract resetSaveNSD(I)V
.end method

.method public abstract sendCursorBmpToSF(IIILandroid/graphics/Bitmap;)Z
.end method

.method public abstract setAPSOnPause()V
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract setCurrentDrawTime(J)V
.end method

.method public abstract setIsDrawCursor(I)V
.end method

.method public abstract setView(Landroid/view/View;)V
.end method

.method public abstract startNsd(I)V
.end method

.method public abstract stopNsd()V
.end method

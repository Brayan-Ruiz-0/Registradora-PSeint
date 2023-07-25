Algoritmo sin_titulo
	Dimension vp[30]
	dimension mcp[4,30]
	Dimension vc[30]
	dimension mcc[5,30]
	
	VP[18]<-"PRODUCTO"
	vp[19]<-"CODIGO  "
	VP[20]<-"CANTIDAD"
	VP[21]<-"PRECIO  "
	vp[22]<-"V/U     "
	vp[23]<-"TOTAL"
	
	vp[1]<-"pan           "
	vp[2]<-"leche         "
	vp[3]<-"huevos        "
	vp[4]<-"¼ de queso    "
	vp[5]<-"Tomate        "
	vp[6]<-"Cebolla       "
	vp[7]<-"Libra de papa "
	vp[8]<-"Lulo          "
	vp[9]<-"mango         "
	vp[10]<-"mandarina    "
	vp[11]<-"Banano       "
	vp[12]<-"Limón        "
	vp[13]<-"Jugo hit     "
	vp[14]<-"Gaseosa 1.5  "
	vp[15]<-"Chocolatina  "
	vp[16]<-"Maní         "
	vp[17]<-"galletas     "
	
	mcp[1,1]<-1
	mcp[1,2]<-2
	mcp[1,3]<-3
	mcp[1,4]<-4
	mcp[1,5]<-5
	mcp[1,6]<-6
	mcp[1,7]<-7
	mcp[1,8]<-8
	mcp[1,9]<-9
	mcp[1,10]<-10
	mcp[1,11]<-11
	mcp[1,12]<-12
	mcp[1,13]<-13
	mcp[1,14]<-14
	mcp[1,15]<-15
	mcp[1,16]<-16
	mcp[1,17]<-17
	
	mcp[2,1]<-20
	mcp[2,2]<-50
	mcp[2,3]<-60
	mcp[2,4]<-15
	mcp[2,5]<-100
	mcp[2,6]<-100
	mcp[2,7]<-30
	mcp[2,8]<-50
	mcp[2,9]<-50
	mcp[2,10]<-20
	mcp[2,11]<-20
	mcp[2,12]<-45
	mcp[2,13]<-15
	mcp[2,14]<-15
	mcp[2,15]<-13
	mcp[2,16]<-12
	mcp[2,17]<-30
	
	mcp[3,1]<-1200
	mcp[3,2]<-2000
	mcp[3,3]<-800
	mcp[3,4]<-1600
	mcp[3,5]<-500
	mcp[3,6]<-500
	mcp[3,7]<-1200
	mcp[3,8]<-300
	mcp[3,9]<-400
	mcp[3,10]<-500
	mcp[3,11]<-650
	mcp[3,12]<-500
	mcp[3,13]<-2000
	mcp[3,14]<-1500
	mcp[3,15]<-600
	mcp[3,16]<-1200
	mcp[3,17]<-800
	
	
	p<-1
	
	Mientras p>0 Hacer
		
		
		
		Escribir "Nombre             "
		Leer n
		
	
		Escribir "Apellido           "
		Leer a
		
		Escribir vp[19],"    ",vp[18],"          ",vp[20],"     ",vp[21]
		
		Para i<-1 Hasta 17 Con Paso 1 Hacer
			Escribir mcp[1,i],"           ",vp[i],"    ",mcp[2,i],"           ",mcp[3,i]
			
			

		Fin Para
		
	acum<-0	
		
		Escribir "                                        " 
		Escribir "escriba el codigo del producto que quiere"
		Leer cp
		
		Para i<-1 Hasta 17 Con Paso 1 Hacer
			
		Segun cp Hacer
			1:
				Escribir "Usted eligio: ",vp[1]
				acum<-acum+1
				vc[acum]<-vp[1]
				
				Escribir "¿Que cantidad desea?"
				Leer ct
				
				mcc[4,acum]<-ct
				
				Si mcp[2,1]>=mcc[4,acum] Entonces
					
					mcc[1,acum]<-mcp[1,1]
					mcc[3,acum]<-mcp[3,1]
					mcp[2,1]<-mcp[2,1]-mcc[4,acum]
					mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
					mcc[5,24]<-mcc[5,24]+mcc[5,acum]
					mcc[5,23]<-mcc[5,24]*0.19
					mcc[5,22]<-mcc[5,24]-mcc[5,23]
					
				SiNo
					Escribir "No tenemos esa cantidad,revise y digite la cantidad nuevamente"
					Escribir "                     "
					Escribir "¿Que cantidad desea?"
					Leer ct
					
					mcc[1,acum]<-mcp[1,1]
					mcc[3,acum]<-mcp[3,1]
					mcp[2,1]<-mcp[2,1]-mcc[4,acum]
					mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
					mcc[5,24]<-mcc[5,24]+mcc[5,acum]
					mcc[5,23]<-mcc[5,24]*0.19
					mcc[5,22]<-mcc[5,24]-mcc[5,23]
					
					acum<-acum-1
					acum<-acum+1
				Fin Si
			2:
				Escribir "Usted eligio: ",vp[2]
				acum<-acum+1
				vc[acum]<-vp[2]
				
				Escribir "¿Que cantidad desea?"
				Leer ct
				
				mcc[4,acum]<-ct
				
				Si mcp[2,2]>=mcc[4,acum] Entonces
					
					mcc[1,acum]<-mcp[1,2]
					mcc[3,acum]<-mcp[3,2]
					mcp[2,2]<-mcp[2,2]-mcc[4,acum]
					mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
					mcc[5,24]<-mcc[5,24]+mcc[5,acum]
					mcc[5,23]<-mcc[5,24]*0.19
					mcc[5,22]<-mcc[5,24]-mcc[5,23]
					
				SiNo
					Escribir "No tenemos esa cantidad,revise y digite la cantidad nuevamente"
					Escribir "                     "
					Escribir "¿Que cantidad desea?"
					Leer ct
					
					mcc[1,acum]<-mcp[1,2]
					mcc[3,acum]<-mcp[3,2]
					mcp[2,2]<-mcp[2,2]-mcc[4,acum]
					mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
					mcc[5,24]<-mcc[5,24]+mcc[5,acum]
					mcc[5,23]<-mcc[5,24]*0.19
					mcc[5,22]<-mcc[5,24]-mcc[5,23]
					
					acum<-acum-1
					acum<-acum+1
		          fin si
			3:
					Escribir "Usted eligio: ",vp[3]
					acum<-acum+1
					vc[acum]<-vp[3]
					
					Escribir "¿Que cantidad desea?"
					Leer ct
					
					mcc[4,acum]<-ct
					
					Si mcp[2,3]>=mcc[4,acum] Entonces
						
						mcc[1,acum]<-mcp[1,3]
						mcc[3,acum]<-mcp[3,3]
						mcp[2,3]<-mcp[2,3]-mcc[4,acum]
						mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
						mcc[5,24]<-mcc[5,24]+mcc[5,acum]
						mcc[5,23]<-mcc[5,24]*0.19
						mcc[5,22]<-mcc[5,24]-mcc[5,23]
						
					SiNo
						Escribir "No tenemos esa cantidad,revise y digite la cantidad nuevamente"
						Escribir "                     "
						Escribir "¿Que cantidad desea?"
						Leer ct
						
						mcc[1,acum]<-mcp[1,3]
						mcc[3,acum]<-mcp[3,3]
						mcp[2,3]<-mcp[2,3]-mcc[4,acum]
						mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
						mcc[5,24]<-mcc[5,24]+mcc[5,acum]
						mcc[5,23]<-mcc[5,24]*0.19
						mcc[5,22]<-mcc[5,24]-mcc[5,23]
						
						acum<-acum-1
						acum<-acum+1
					fin	si
			4:
						Escribir "Usted eligio: ",vp[4]
						acum<-acum+1
						vc[acum]<-vp[4]
						
						Escribir "¿Que cantidad desea?"
						Leer ct
						
						mcc[4,acum]<-ct
						
						Si mcp[2,4]>=mcc[4,acum] Entonces
							
							mcc[1,acum]<-mcp[1,4]
							mcc[3,acum]<-mcp[3,4]
							mcp[2,4]<-mcp[2,4]-mcc[4,acum]
							mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
							mcc[5,24]<-mcc[5,24]+mcc[5,acum]
							mcc[5,23]<-mcc[5,24]*0.19
							mcc[5,22]<-mcc[5,24]-mcc[5,23]
							
						SiNo
							Escribir "No tenemos esa cantidad,revise y digite la cantidad nuevamente"
							Escribir "                     "
							Escribir "¿Que cantidad desea?"
							Leer ct
							
							mcc[1,acum]<-mcp[1,4]
							mcc[3,acum]<-mcp[3,4]
							mcp[2,4]<-mcp[2,4]-mcc[4,acum]
							mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
							mcc[5,24]<-mcc[5,24]+mcc[5,acum]
							mcc[5,23]<-mcc[5,24]*0.19
							mcc[5,22]<-mcc[5,24]-mcc[5,23]
							
							acum<-acum-1
							acum<-acum+1
						fin si
			5:
							Escribir "Usted eligio: ",vp[5]
							acum<-acum+1
							vc[acum]<-vp[5]
							
							Escribir "¿Que cantidad desea?"
							Leer ct
							
							mcc[4,acum]<-ct
							
							Si mcp[2,5]>=mcc[4,acum] Entonces
								
								mcc[1,acum]<-mcp[1,5]
								mcc[3,acum]<-mcp[3,5]
								mcp[2,5]<-mcp[2,5]-mcc[4,acum]
								mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
								mcc[5,24]<-mcc[5,24]+mcc[5,acum]
								mcc[5,23]<-mcc[5,24]*0.19
								mcc[5,22]<-mcc[5,24]-mcc[5,23]
								
							SiNo
								Escribir "No tenemos esa cantidad,revise y digite la cantidad nuevamente"
								Escribir "                     "
								Escribir "¿Que cantidad desea?"
								Leer ct
								
								mcc[1,acum]<-mcp[1,5]
								mcc[3,acum]<-mcp[3,5]
								mcp[2,5]<-mcp[2,5]-mcc[4,acum]
								mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
								mcc[5,24]<-mcc[5,24]+mcc[5,acum]
								mcc[5,23]<-mcc[5,24]*0.19
								mcc[5,22]<-mcc[5,24]-mcc[5,23]
								
								acum<-acum-1
								acum<-acum+1
							fin si
			6:
								Escribir "Usted eligio: ",vp[6]
								acum<-acum+1
								vc[acum]<-vp[6]
								
								Escribir "¿Que cantidad desea?"
								Leer ct
								
								mcc[4,acum]<-ct
								
								Si mcp[2,6]>=mcc[4,acum] Entonces
									
									mcc[1,acum]<-mcp[1,6]
									mcc[3,acum]<-mcp[3,6]
									mcp[2,6]<-mcp[2,6]-mcc[4,acum]
									mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
									mcc[5,24]<-mcc[5,24]+mcc[5,acum]
									mcc[5,23]<-mcc[5,24]*0.19
									mcc[5,22]<-mcc[5,24]-mcc[5,23]
									
								SiNo
									Escribir "No tenemos esa cantidad,revise y digite la cantidad nuevamente"
									Escribir "                     "
									Escribir "¿Que cantidad desea?"
									Leer ct
									
									mcc[1,acum]<-mcp[1,6]
									mcc[3,acum]<-mcp[3,6]
									mcp[2,6]<-mcp[2,6]-mcc[4,acum]
									mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
									mcc[5,24]<-mcc[5,24]+mcc[5,acum]
									mcc[5,23]<-mcc[5,24]*0.19
									mcc[5,22]<-mcc[5,24]-mcc[5,23]
									
									acum<-acum-1
									acum<-acum+1
									fin si
			7:
									Escribir "Usted eligio: ",vp[7]
									acum<-acum+1
									vc[acum]<-vp[7]
									
									Escribir "¿Que cantidad desea?"
									Leer ct
									
									mcc[4,acum]<-ct
									
									Si mcp[2,7]>=mcc[4,acum] Entonces
										
										mcc[1,acum]<-mcp[1,7]
										mcc[3,acum]<-mcp[3,7]
										mcp[2,7]<-mcp[2,7]-mcc[4,acum]
										mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
										mcc[5,24]<-mcc[5,24]+mcc[5,acum]
										mcc[5,23]<-mcc[5,24]*0.19
										mcc[5,22]<-mcc[5,24]-mcc[5,23]
										
									SiNo
										Escribir "No tenemos esa cantidad,revise y digite la cantidad nuevamente"
										Escribir "                     "
										Escribir "¿Que cantidad desea?"
										Leer ct
										
										mcc[1,acum]<-mcp[1,7]
										mcc[3,acum]<-mcp[3,7]
										mcp[2,7]<-mcp[2,7]-mcc[4,acum]
										mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
										mcc[5,24]<-mcc[5,24]+mcc[5,acum]
										mcc[5,23]<-mcc[5,24]*0.19
										mcc[5,22]<-mcc[5,24]-mcc[5,23]
										
										acum<-acum-1
										acum<-acum+1
										fin si
			8:
										Escribir "Usted eligio: ",vp[8]
										acum<-acum+1
										vc[acum]<-vp[8]
										
										Escribir "¿Que cantidad desea?"
										Leer ct
										
										mcc[4,acum]<-ct
										
										Si mcp[2,8]>=mcc[4,acum] Entonces
											
											mcc[1,acum]<-mcp[1,8]
											mcc[3,acum]<-mcp[3,8]
											mcp[2,8]<-mcp[2,8]-mcc[4,acum]
											mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
											mcc[5,24]<-mcc[5,24]+mcc[5,acum]
											mcc[5,23]<-mcc[5,24]*0.19
											mcc[5,22]<-mcc[5,24]-mcc[5,23]
											
										SiNo
											Escribir "No tenemos esa cantidad,revise y digite la cantidad nuevamente"
											Escribir "                     "
											Escribir "¿Que cantidad desea?"
											Leer ct
											
											mcc[1,acum]<-mcp[1,8]
											mcc[3,acum]<-mcp[3,8]
											mcp[2,8]<-mcp[2,8]-mcc[4,acum]
											mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
											mcc[5,24]<-mcc[5,24]+mcc[5,acum]
											mcc[5,23]<-mcc[5,24]*0.19
											mcc[5,22]<-mcc[5,24]-mcc[5,23]
											
											acum<-acum-1
											acum<-acum+1
											fin si
			9:
											Escribir "Usted eligio: ",vp[9]
											acum<-acum+1
											vc[acum]<-vp[9]
											
											Escribir "¿Que cantidad desea?"
											Leer ct
											
											mcc[4,acum]<-ct
											
											Si mcp[2,9]>=mcc[4,acum] Entonces
												
												mcc[1,acum]<-mcp[1,9]
												mcc[3,acum]<-mcp[3,9]
												mcp[2,9]<-mcp[2,9]-mcc[4,acum]
												mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
												mcc[5,24]<-mcc[5,24]+mcc[5,acum]
												mcc[5,23]<-mcc[5,24]*0.19
												mcc[5,22]<-mcc[5,24]-mcc[5,23]
												
											SiNo
												Escribir "No tenemos esa cantidad,revise y digite la cantidad nuevamente"
												Escribir "                     "
												Escribir "¿Que cantidad desea?"
												Leer ct
												
												mcc[1,acum]<-mcp[1,9]
												mcc[3,acum]<-mcp[3,9]
												mcp[2,9]<-mcp[2,9]-mcc[4,acum]
												mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
												mcc[5,24]<-mcc[5,24]+mcc[5,acum]
												mcc[5,23]<-mcc[5,24]*0.19
												mcc[5,22]<-mcc[5,24]-mcc[5,23]
												
												acum<-acum-1
												acum<-acum+1
												fin si
			10:
												Escribir "Usted eligio: ",vp[10]
												acum<-acum+1
												vc[acum]<-vp[10]
												
												Escribir "¿Que cantidad desea?"
												Leer ct
												
												mcc[4,acum]<-ct
												
												Si mcp[2,10]>=mcc[4,acum] Entonces
													
													mcc[1,acum]<-mcp[1,10]
													mcc[3,acum]<-mcp[3,10]
													mcp[2,10]<-mcp[2,10]-mcc[4,acum]
													mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
													mcc[5,24]<-mcc[5,24]+mcc[5,acum]
													mcc[5,23]<-mcc[5,24]*0.19
													mcc[5,22]<-mcc[5,24]-mcc[5,23]
													
												SiNo
													Escribir "No tenemos esa cantidad,revise y digite la cantidad nuevamente"
													Escribir "                     "
													Escribir "¿Que cantidad desea?"
													Leer ct
													
													mcc[1,acum]<-mcp[1,10]
													mcc[3,acum]<-mcp[3,10]
													mcp[2,10]<-mcp[2,10]-mcc[4,acum]
													mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
													mcc[5,24]<-mcc[5,24]+mcc[5,acum]
													mcc[5,23]<-mcc[5,24]*0.19
													mcc[5,22]<-mcc[5,24]-mcc[5,23]
													
													acum<-acum-1
													acum<-acum+1
													fin si
			11:
													Escribir "Usted eligio: ",vp[11]
													acum<-acum+1
													vc[acum]<-vp[11]
													
													Escribir "¿Que cantidad desea?"
													Leer ct
													
													mcc[4,acum]<-ct
													
													Si mcp[2,11]>=mcc[4,acum] Entonces
														
														mcc[1,acum]<-mcp[1,11]
														mcc[3,acum]<-mcp[3,11]
														mcp[2,11]<-mcp[2,11]-mcc[4,acum]
														mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
														mcc[5,24]<-mcc[5,24]+mcc[5,acum]
														mcc[5,23]<-mcc[5,24]*0.19
														mcc[5,22]<-mcc[5,24]-mcc[5,23]
														
													SiNo
														Escribir "No tenemos esa cantidad,revise y digite la cantidad nuevamente"
														Escribir "                     "
														Escribir "¿Que cantidad desea?"
														Leer ct
														
														mcc[1,acum]<-mcp[1,11]
														mcc[3,acum]<-mcp[3,11]
														mcp[2,11]<-mcp[2,11]-mcc[4,acum]
														mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
														mcc[5,24]<-mcc[5,24]+mcc[5,acum]
														mcc[5,23]<-mcc[5,24]*0.19
														mcc[5,22]<-mcc[5,24]-mcc[5,23]
														
														acum<-acum-1
														acum<-acum+1
														fin si
			12:
														Escribir "Usted eligio: ",vp[12]
														acum<-acum+1
														vc[acum]<-vp[12]
														
														Escribir "¿Que cantidad desea?"
														Leer ct
														
														mcc[4,acum]<-ct
														
														Si mcp[2,12]>=mcc[4,acum] Entonces
															
															mcc[1,acum]<-mcp[1,12]
															mcc[3,acum]<-mcp[3,12]
															mcp[2,12]<-mcp[2,12]-mcc[4,acum]
															mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
															mcc[5,24]<-mcc[5,24]+mcc[5,acum]
															mcc[5,23]<-mcc[5,24]*0.19
															mcc[5,22]<-mcc[5,24]-mcc[5,23]
															
														SiNo
															Escribir "No tenemos esa cantidad,revise y digite la cantidad nuevamente"
															Escribir "                     "
															Escribir "¿Que cantidad desea?"
															Leer ct
															
															mcc[1,acum]<-mcp[1,12]
															mcc[3,acum]<-mcp[3,12]
															mcp[2,12]<-mcp[2,12]-mcc[4,acum]
															mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
															mcc[5,24]<-mcc[5,24]+mcc[5,acum]
															mcc[5,23]<-mcc[5,24]*0.19
															mcc[5,22]<-mcc[5,24]-mcc[5,23]
															
															acum<-acum-1
															acum<-acum+1
															fin si
			13:
															Escribir "Usted eligio: ",vp[13]
															acum<-acum+1
															vc[acum]<-vp[13]
															
															Escribir "¿Que cantidad desea?"
															Leer ct
															
															mcc[4,acum]<-ct
															
															Si mcp[2,13]>=mcc[4,acum] Entonces
																
																mcc[1,acum]<-mcp[1,13]
																mcc[3,acum]<-mcp[3,13]
																mcp[2,13]<-mcp[2,13]-mcc[4,acum]
																mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
																mcc[5,24]<-mcc[5,24]+mcc[5,acum]
																mcc[5,23]<-mcc[5,24]*0.19
																mcc[5,22]<-mcc[5,24]-mcc[5,23]
																
															SiNo
																Escribir "No tenemos esa cantidad,revise y digite la cantidad nuevamente"
																Escribir "                     "
																Escribir "¿Que cantidad desea?"
																Leer ct
																
																mcc[1,acum]<-mcp[1,13]
																mcc[3,acum]<-mcp[3,13]
																mcp[2,13]<-mcp[2,13]-mcc[4,acum]
																mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
																mcc[5,24]<-mcc[5,24]+mcc[5,acum]
																mcc[5,23]<-mcc[5,24]*0.19
																mcc[5,22]<-mcc[5,24]-mcc[5,23]
																
																acum<-acum-1
																acum<-acum+1
																fin si
			14:
																Escribir "Usted eligio: ",vp[14]
																acum<-acum+1
																vc[acum]<-vp[14]
																
																Escribir "¿Que cantidad desea?"
																Leer ct
																
																mcc[4,acum]<-ct
																
																Si mcp[2,14]>=mcc[4,acum] Entonces
																	
																	mcc[1,acum]<-mcp[1,14]
																	mcc[3,acum]<-mcp[3,14]
																	mcp[2,14]<-mcp[2,14]-mcc[4,acum]
																	mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
																	mcc[5,24]<-mcc[5,24]+mcc[5,acum]
																	mcc[5,23]<-mcc[5,24]*0.19
																	mcc[5,22]<-mcc[5,24]-mcc[5,23]
																	
																SiNo
																	Escribir "No tenemos esa cantidad,revise y digite la cantidad nuevamente"
																	Escribir "                     "
																	Escribir "¿Que cantidad desea?"
																	Leer ct
																	
																	mcc[1,acum]<-mcp[1,14]
																	mcc[3,acum]<-mcp[3,14]
																	mcp[2,14]<-mcp[2,14]-mcc[4,acum]
																	mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
																	mcc[5,24]<-mcc[5,24]+mcc[5,acum]
																	mcc[5,23]<-mcc[5,24]*0.19
																	mcc[5,22]<-mcc[5,24]-mcc[5,23]
																	
																	acum<-acum-1
																	acum<-acum+1
																	fin si
			15:
																	Escribir "Usted eligio: ",vp[15]
																	acum<-acum+1
																	vc[acum]<-vp[15]
																	
																	Escribir "¿Que cantidad desea?"
																	Leer ct
																	
																	mcc[4,acum]<-ct
																	
																	Si mcp[2,15]>=mcc[4,acum] Entonces
																		
																		mcc[1,acum]<-mcp[1,15]
																		mcc[3,acum]<-mcp[3,15]
																		mcp[2,15]<-mcp[2,15]-mcc[4,acum]
																		mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
																		mcc[5,24]<-mcc[5,24]+mcc[5,acum]
																		mcc[5,23]<-mcc[5,24]*0.19
																		mcc[5,22]<-mcc[5,24]-mcc[5,23]
																		
																	SiNo
																		Escribir "No tenemos esa cantidad,revise y digite la cantidad nuevamente"
																		Escribir "                     "
																		Escribir "¿Que cantidad desea?"
																		Leer ct
																		
																		mcc[1,acum]<-mcp[1,15]
																		mcc[3,acum]<-mcp[3,15]
																		mcp[2,15]<-mcp[2,15]-mcc[4,acum]
																		mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
																		mcc[5,24]<-mcc[5,24]+mcc[5,acum]
																		mcc[5,23]<-mcc[5,24]*0.19
																		mcc[5,22]<-mcc[5,24]-mcc[5,23]
																		
																		acum<-acum-1
																		acum<-acum+1
																		fin si
			16:
																		Escribir "Usted eligio: ",vp[16]
																		acum<-acum+1
																		vc[acum]<-vp[16]
																		
																		Escribir "¿Que cantidad desea?"
																		Leer ct
																		
																		mcc[4,acum]<-ct
																		
																		Si mcp[2,16]>=mcc[4,acum] Entonces
																			
																			mcc[1,acum]<-mcp[1,16]
																			mcc[3,acum]<-mcp[3,16]
																			mcp[2,16]<-mcp[2,16]-mcc[4,acum]
																			mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
																			mcc[5,24]<-mcc[5,24]+mcc[5,acum]
																			mcc[5,23]<-mcc[5,24]*0.19
																			mcc[5,22]<-mcc[5,24]-mcc[5,23]
																			
																		SiNo
																			Escribir "No tenemos esa cantidad,revise y digite la cantidad nuevamente"
																			Escribir "                     "
																			Escribir "¿Que cantidad desea?"
																			Leer ct
																			
																			mcc[1,acum]<-mcp[1,16]
																			mcc[3,acum]<-mcp[3,16]
																			mcp[2,16]<-mcp[2,16]-mcc[4,acum]
																			mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
																			mcc[5,24]<-mcc[5,24]+mcc[5,acum]
																			mcc[5,23]<-mcc[5,24]*0.19
																			mcc[5,22]<-mcc[5,24]-mcc[5,23]
																			
																			acum<-acum-1
																			acum<-acum+1
																			fin si
			17:
																			Escribir "Usted eligio: ",vp[17]
																			acum<-acum+1
																			vc[acum]<-vp[17]
																			
																			Escribir "¿Que cantidad desea?"
																			Leer ct
																			
																			mcc[4,acum]<-ct
																			
																			Si mcp[2,17]>=mcc[4,acum] Entonces
																				
																				mcc[1,acum]<-mcp[1,17]
																				mcc[3,acum]<-mcp[3,17]
																				mcp[2,17]<-mcp[2,17]-mcc[4,acum]
																				mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
																				mcc[5,24]<-mcc[5,24]+mcc[5,acum]
																				mcc[5,23]<-mcc[5,24]*0.19
																				mcc[5,22]<-mcc[5,24]-mcc[5,23]
																				
																			SiNo
																				Escribir "No tenemos esa cantidad,revise y digite la cantidad nuevamente"
																				Escribir "                     "
																				Escribir "¿Que cantidad desea?"
																				Leer ct
																				
																				mcc[1,acum]<-mcp[1,17]
																				mcc[3,acum]<-mcp[3,17]
																				mcp[2,17]<-mcp[2,17]-mcc[4,acum]
																				mcc[5,acum]<-mcc[3,acum]*mcc[4,acum]
																				mcc[5,24]<-mcc[5,24]+mcc[5,acum]
																				mcc[5,23]<-mcc[5,24]*0.19
																				mcc[5,22]<-mcc[5,24]-mcc[5,23]
																				
																				acum<-acum-1
																				acum<-acum+1
																				fin si
			De Otro Modo:
				Escribir "no tenemos esa cantidad,revise y digite la cantidad nuevamente"
		Fin Segun
		
		Escribir "                        "
		Escribir "¿Desea algo mas? (si/no)"
		Escribir "                        "
		Leer resp
		
		Si resp="si" Entonces
			
			Escribir vp[19],"    ",vp[18],"          ",vp[20],"     ",vp[21]
			
			Para i<-1 Hasta 17 Con Paso 1 Hacer
				Escribir mcp[1,i],"           ",vp[i],"    ",mcp[2,i],"           ",mcp[3,i]
				
				
				
			Fin Para
			
			Escribir "                                        " 
			Escribir "escriba el codigo del producto que desee"
			Leer cp
			
		SiNo
			i<-i+17
		Fin Si
	Fin Para
	
	
	Escribir"========================================================="
	Escribir"                   factura                               " 
	Escribir"=========================================================" 
	Escribir" Cliente: ",n,a,"                                        "   
	Escribir"========================================================="
	Escribir"  ",vp[18],"  " vp[19],"   ",vp[20],"     ",vp[22],"     ",vp[23]
	Para i<-1 Hasta acum Con Paso 1 Hacer
		Escribir"  " vc[i],"",mcc[1,i],"         ",mcc[4,i],"        ",mcc[3,i],"          $",mcc[5,i]
	Fin Para
	Escribir "========================================================"
	Escribir "                                subtotal:         $",mcc[5,22]   
	Escribir "                                Iva: (0.19)       $",mcc[5,23] 
	Escribir "                                Total:            $",mcc[5,24] 
	Escribir "========================================================"
	mcc[5,24]<-0
	Esperar Tecla
	Borrar Pantalla
	Fin Mientras
	
	
	
	
	
FinAlgoritmo